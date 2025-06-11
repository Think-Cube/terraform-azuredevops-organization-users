variable "users" {
  description = "Map of user entitlements. Example: { 'user1@example.com' = { account_license_type = 'express', licensing_source = 'auto' } }"
  type        = map(object({
    account_license_type = string
    licensing_source     = string
  }))
}

variable "users_enabled" {
  description = "Boolean to enable or disable user entitlement creation"
  type        = bool
  default     = true
}
