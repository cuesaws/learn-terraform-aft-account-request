data "terraform_remote_state" "main" {
  backend = "local"  # Update with the appropriate backend configuration if using remote state
  config = {
    path = "../main.tfstate"  # Update with the correct path to the main.tfstate file
  }
}

locals {
  accounts = data.terraform_remote_state.main.outputs.accounts_output
}
resource "aws_dynamodb_table_item" "account-request" {
  table_name = var.account-request-table
  hash_key   = var.account-request-table-hash

  # Added for ease of use
  for_each = local.accounts

  item = jsonencode({
    #id = { S = lookup(var.control_tower_parameters, "AccountEmail") }
    id = { S = each.key}
    control_tower_parameters = { M = {
      #AccountEmail              = { S = lookup(var.control_tower_parameters, "AccountEmail") }
      AccountEmail              = { S = lookup(each.value.control_tower_parameters, "AccountEmail") }
      AccountName               = { S = lookup(each.value.control_tower_parameters, "AccountName") }
      ManagedOrganizationalUnit = { S = lookup(each.value.control_tower_parameters, "ManagedOrganizationalUnit") }
      SSOUserEmail              = { S = lookup(each.value.control_tower_parameters, "SSOUserEmail") }
      SSOUserFirstName          = { S = lookup(each.value.control_tower_parameters, "SSOUserFirstName") }
      SSOUserLastName           = { S = lookup(each.value.control_tower_parameters, "SSOUserLastName") }
      }
    }
    change_management_parameters = { M = {
      change_reason       = { S = lookup(each.value.change_management_parameters, "change_reason") }
      change_requested_by = { S = lookup(each.value.change_management_parameters, "change_requested_by") }
      }
    }
    account_tags                = { S = jsonencode(each.value.account_tags) }
    account_customizations_name = { S = "sandbox-${each.key}" }
    custom_fields               = { S = jsonencode(var.custom_fields) }
  })
}