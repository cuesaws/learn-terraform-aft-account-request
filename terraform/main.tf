module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-cues-dev-3@cuesinc.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "AFT (ou-dld9-73newpki)"
    SSOUserEmail              = "jacob.sanchez@slalom.com"
    SSOUserFirstName          = "Jacob"
    SSOUserLastName           = "Sanchez"
  }

  account_tags = {
    "application" = "AFT"
    "owner" = "jacob.sanchez@slalom.com"
  }

  change_management_parameters = {
    change_requested_by = "Jacob Sanchez"
    change_reason       = "AWS Control Tower Account Factory for Terraform test run v1"
  }

  custom_fields = {
    group = "non-prod"
  }
  account_customizations_name = "sandbox"
}
