output "group" {
  value       = azuread_group.this
  description = "The Azure AD group created by this module."
}

output "members" {
  value       = azuread_group.this.members
  description = "The members of the Azure AD group."
}