module "AFT_Test_RH_01122024_1" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
      AccountEmail              = "cuesaws+rhtest01122024@gmail.com"
      AccountName               = "rhtest011220241"
      ManagedOrganizationalUnit = "AFT (ou-dld9-73newpki)"
      SSOUserEmail              = "rhaughton@cuesinc.com"
      SSOUserFirstName          = "Ryan"
      SSOUserLastName           = "Haughton"
    }
  account_tags = {
    "application" = "AFT"
    "business_region" = "us-east-1"
    "owner" = "rhaughton@cuesinc.com"
  }
  
  change_management_parameters = {
    change_requested_by = "Ryan Haughton"
    change_reason       = "AWS Control Tower Account Factory for Terraform test run 01122024 v1"
  }

  account_customizations_name = "sandbox"
}