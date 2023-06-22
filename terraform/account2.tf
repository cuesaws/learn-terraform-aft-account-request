module "sandbox_account2" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
      AccountEmail              = "jacob.sanchez@slalom.com"
      AccountName               = "sandbox-account-02"
      ManagedOrganizationalUnit = "AFT (ou-dld9-73newpki)"
      SSOUserEmail              = "jacob.sanchez@slalom.com"
      SSOUserFirstName          = "Jacob"
      SSOUserLastName           = "Sanchez"
    }

  account_tags = {
    "application" = "AFT"
    "business_region" = "us-east-1"
    "owner" = "jacob.sanchez@slalom.com"
  }
  
  change_management_parameters = {
    change_requested_by = "Jacob Sanchez"
    change_reason       = "AWS Control Tower Account Factory for Terraform test run v1"
  }

  account_customizations_name = "sandbox-customizations-02"
}

