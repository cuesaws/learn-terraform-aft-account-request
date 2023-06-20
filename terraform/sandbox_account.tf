module "sandbox_account" {
  source = "./modules/aft-account-request"
  for_each = {for i, account in var.accounts : i => account}

  control_tower_parameters = each.value.control_tower_parameters
  account_tags = each.value.account_tags
  change_management_parameters = each.value.change_management_parameters
  /*
  control_tower_parameters = {
      AccountEmail              = each.value.control_tower_parameters.AccountEmail
      AccountName               = each.value.control_tower_parameters.AccountName
      ManagedOrganizationalUnit = each.value.control_tower_parameters.ManagedOrganizationalUnit
      SSOUserEmail              = each.value.control_tower_parameters.SSOUserEmail
      SSOUserFirstName          = each.value.control_tower_parameters.SSOUserFirstName
      SSOUserLastName           = each.value.control_tower_parameters.SSOUserLastName
    }
    account_tags = each.value.account_tags
  
    change_management_parameters = {
        change_requested_by = each.value.change_management_parameters.change_requested_by
        change_reason       = each.value.change_management_parameters.change_reason
    }*/
      account_customizations_name = "sandbox-customizations"
}