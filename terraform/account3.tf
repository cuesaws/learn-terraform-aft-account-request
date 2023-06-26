module "sandbox_account03" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
      AccountEmail              = "aws-cues-dev-6@cuesinc.com"
      AccountName               = "sandbox_account03"
      ManagedOrganizationalUnit = "CUES Sandbox (non-prod) (ou-dld9-wt6u80xk)"
      SSOUserEmail              = "aws-cues-dev-6@cuesinc.com"
      SSOUserFirstName          = "Jacob"
      SSOUserLastName           = "Sanchez"
    }

  account_tags = {
    "application" = "AFT"
    "business_region" = "us-east-1"
    "owner" = "aws-cues-dev-6@cuesinc.com"
  }
  
  change_management_parameters = {
    change_requested_by = "Jacob Sanchez"
    change_reason       = "AWS Control Tower Account Factory for Terraform test run v1"
  }

  account_customizations_name = "sandbox02"
}
