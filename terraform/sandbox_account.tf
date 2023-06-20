module "sandbox_account" {
  source = "./modules/aft-account-request"
  for_each = {for i, account in var.accounts : i => account}

  control_tower_parameters = each.value.control_tower_parameters
  account_tags = each.value.account_tags
  change_management_parameters = each.value.change_management_parameters
  account_customizations_name = "sandbox-customizations"
}