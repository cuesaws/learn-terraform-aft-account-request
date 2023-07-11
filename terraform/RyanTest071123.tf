/*module "RyanTestAccount071123" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
      AccountEmail              = "rhaughton@cuesinc.com"
      AccountName               = "Ryan_FL"
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
    change_reason       = "New test account by RH"
  }

  account_customizations_name = "sandbox"
}*/