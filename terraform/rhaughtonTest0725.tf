module "rhaughtonTest07252023" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
      AccountEmail              = "rhaughton@cuesinc.com"
      AccountName               = "RyanTest725"
      ManagedOrganizationalUnit = "CUES Sandbox (non-prod) (ou-dld9-wt6u80xk)"
      SSOUserEmail              = "rhaughton@cuesinc.com"
      SSOUserFirstName          = "Ryan 
      SSOUserLastName           = "Haughton"
    }

  account_tags = {
    "application" = "TestTF"
    "business_region" = "us-east-1"
    "owner" = "rhaughton@cuesinc.com"
  }
  
  change_management_parameters = {
    change_requested_by = "Ryan Haughton"
    change_reason       = "AWS Control Tower Account Factory for Terraform test br RH"
  }

  account_customizations_name = "sandbox"
}