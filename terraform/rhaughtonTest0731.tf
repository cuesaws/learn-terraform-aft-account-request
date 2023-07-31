module "rhaughtonTest07312023" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
      AccountEmail              = "cuesaws+ryantest731@gmail.com"
      AccountName               = "RyanTest731"
      ManagedOrganizationalUnit = "CUES Sandbox (non-prod) (ou-dld9-wt6u80xk)"
      SSOUserEmail              = "cuesaws+ryantest731@gmail.com"
      SSOUserFirstName          = "Ryan" 
      SSOUserLastName           = "Haughton"
    }

  account_tags = {
    "application" = "TestTF"
    "business_region" = "us-east-1"
    "owner" = "cuesaws+ryantest731@gmail.com"
  }
  
  change_management_parameters = {
    change_requested_by = "Ryan Haughton"
    change_reason       = "AWS Control Tower Account Factory for Terraform test by RH"
  }

  account_customizations_name = "sandbox"
}