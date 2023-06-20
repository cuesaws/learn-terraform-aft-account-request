variable "accounts" {
  description = "List of accounts to create"
  type = list(object({
    control_tower_parameters = object({
      AccountEmail              = string
      AccountName               = string
      ManagedOrganizationalUnit = string
      SSOUserEmail              = string
      SSOUserFirstName          = string
      SSOUserLastName           = string
    })
    account_tags = map(string)
    change_management_parameters = object({
      change_requested_by = string
      change_reason       = string
    })
  }))
}
