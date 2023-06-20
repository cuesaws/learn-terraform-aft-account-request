module "sandbox_account" {
  source = "./modules/aft-account-request"
  for_each = {for i, account in var.accounts : i => account}

  control_tower_parameters = {
    AccountEmail              = each.value["AccountEmail"]
    AccountName               = each.value["AccountName"]
    ManagedOrganizationalUnit = each.value["ManagedOrganizationalUnit"]
    SSOUserEmail              = each.value["SSOUserEmail"]
    SSOUserFirstName          = each.value["SSOUserFirstName"]
    SSOUserLastName           = each.value["SSOUserLastName"]
  }

  account_tags = each.value["AccountTags"]

  change_management_parameters = each.value["ChangeManagementParameters"]
}