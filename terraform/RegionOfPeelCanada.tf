/*module "RegionOfPeel_Canada" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
      AccountEmail              = "cuesaws+regionofpeelcanada@gmail.com"
      AccountName               = "RegionOfPeelCanada"
      ManagedOrganizationalUnit = "CUES Production (ou-dld9-h48dmvqc)"
  }
  account_tags = {
    "application" = "AFT"
    "business_region" = "us-east-1"
    "owner" = "aws@cuesinc.com"
  }
  
  change_management_parameters = {
    change_requested_by = "Ryan Haughton"
    change_reason       = "New Prod Customer"
  }

  account_customizations_name = "Prod"
}*/