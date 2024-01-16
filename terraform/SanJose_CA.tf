module "SanJose_CA" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
      AccountEmail              = "cuesaws+sanjose_ca@gmail.com"
      AccountName               = "SanJose_CA"
      ManagedOrganizationalUnit = "CUES Production (ou-dld9-h48dmvqc)"
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
    change_reason       = "San Jose account creation"
  }

  account_customizations_name = "sandbox"
}