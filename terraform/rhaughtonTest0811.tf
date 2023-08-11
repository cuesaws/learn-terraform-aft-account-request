module "rhaughtonTest08112023" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
      AccountEmail              = "cuesaws+ryantest0811@gmail.com"
      AccountName               = "RyanTest0811"
      ManagedOrganizationalUnit = "CUES Sandbox (non-prod) (ou-dld9-wt6u80xk)"
      SSOUserEmail              = "cuesaws+ryantest0811@gmail.com"
      SSOUserFirstName          = "Ryan" 
      SSOUserLastName           = "Haughton"
    }

  account_tags = {
    "application" = "TestTF"
    "business_region" = "us-east-1"
    "owner" = "cuesaws+ryantest0811@gmail.com"
  }
  
  change_management_parameters = {
    change_requested_by = "Ryan Haughton"
    change_reason       = "AWS Control Tower Account Factory for Terraform test by RH 0811"
  }

  account_customizations_name = "sandbox"
}