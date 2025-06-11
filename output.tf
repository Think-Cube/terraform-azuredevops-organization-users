output "user_entitlements" {
  description = "The entitlements for the users"
  value = {
    for k, v in azuredevops_user_entitlement.main : k => {
      principal_name       = v.principal_name
      account_license_type = v.account_license_type
      licensing_source     = v.licensing_source
    }
  }
}
