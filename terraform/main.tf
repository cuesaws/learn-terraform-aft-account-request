module "sandbox_account_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = each.value["AccountEmail"]
    AccountName               = each.value["AccountName"]
    ManagedOrganizationalUnit = each.value["ManagedOrganizationalUnit"]
    SSOUserEmail              = each.value["SSOUserEmail"]
    SSOUserFirstName          = each.value["SSOUserFirstName"]
    SSOUserLastName           = each.value
  }

  account_tags = each.value["AccountTags"]

  change_management_parameters = each.value["ChangeManagementParameters"]


  account_customizations_name = "sandbox-customizations"
}
