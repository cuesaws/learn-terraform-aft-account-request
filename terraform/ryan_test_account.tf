module "ryan_test_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
      AccountEmail              = "ryan.haughton@gmail.com"
      AccountName               = "ryan_test_account"
      ManagedOrganizationalUnit = "AFT (ou-dld9-73newpki)"
      SSOUserEmail              = "ryan.haughton@gmail.com"
      SSOUserFirstName          = "Ryan"
      SSOUserLastName           = "Haughton"
    }
  account_tags = {
    "application" = "AFT"
    "business_region" = "us-east-1"
    "owner" = "ryan.haughton@gmail.com"
  }
  
  change_management_parameters = {
    change_requested_by = "Ryan Haughton"
    change_reason       = "AWS Control Tower Account Factory for Terraform test run by RH"
  }

  account_customizations_name = "sandbox"
}