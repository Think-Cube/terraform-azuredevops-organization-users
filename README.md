## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.3 |
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | 1.11.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuredevops"></a> [azuredevops](#provider\_azuredevops) | 1.11.0 |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.38.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuredevops_user_entitlement.main](https://registry.terraform.io/providers/microsoft/azuredevops/1.11.0/docs/resources/user_entitlement) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_users"></a> [users](#input\_users) | Map of user entitlements. Example: { 'user1@example.com' = { account\_license\_type = 'express', licensing\_source = 'auto' } } | <pre>map(object({<br/>    account_license_type = string<br/>    licensing_source     = string<br/>  }))</pre> | n/a | yes |
| <a name="input_users_enabled"></a> [users\_enabled](#input\_users\_enabled) | Boolean to enable or disable user entitlement creation | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_user_entitlements"></a> [user\_entitlements](#output\_user\_entitlements) | The entitlements for the users |
