resource "azuredevops_user_entitlement" "main" {
  for_each = {
    for k, v in var.users : k => v
    if var.users_enabled
  }

  principal_name       = each.key
  account_license_type = each.value.account_license_type
  licensing_source     = each.value.licensing_source
}
