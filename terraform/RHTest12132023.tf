module "RH12132023" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
      AccountEmail              = "cuesaws+RHTest@cuesinc.com"
      AccountName               = "RHT"
      ManagedOrganizationalUnit = "CUES Sandbox (non-prod) (ou-dld9-wt6u80xk)"
     
    }
  account_tags = {
    "application" = "Test"
    "business_region" = "us-east-1"
    "owner" = "cuesaws+RHTest@cuesinc.com"
  }
  
  change_management_parameters = {
    change_requested_by = "Ryan Haughton"
    change_reason       = "AFT Test"
  }

  account_customizations_name = "sandbox"
}