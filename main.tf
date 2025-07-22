/*
 * # wanted-cloud/terraform-azure-security-group
 * 
 * This repository represents a template for a Terraform building block module as we think it should be done, so it's for sure opinionated but in our eyes simple and powerful. Feel free to use or contribute.
 */

resource "azuread_group" "this" {
  display_name               = var.name
  mail_enabled               = var.mail_enabled
  mail_nickname              = var.mail_nickname
  security_enabled           = var.security_enabled
  description                = var.description
  types                      = var.types
  owners                     = var.owners
  assignable_to_role         = var.assignable_to_role
  visibility                 = var.visibility
  prevent_duplicate_names    = var.prevent_duplicate_names
  writeback_enabled          = var.writeback_enabled
  external_senders_allowed   = var.external_senders_allowed
  auto_subscribe_new_members = var.auto_subscribe_new_members
  hide_from_address_lists    = var.hide_from_address_lists
  hide_from_outlook_clients  = var.hide_from_outlook_clients

  // Ensure that the group is created with an empty members list to avoid issues with the lifecycle management as it is managed by separate resource
  // This is a solution to prevent Terraform from trying to manage the members directly in this resource
  members = []
  lifecycle {
    ignore_changes = [
      members
    ]
  }

  timeouts {
    create = try(
      local.metadata.resource_timeouts["azuread_group"]["create"],
      local.metadata.resource_timeouts["default"]["create"]
    )
    read = try(
      local.metadata.resource_timeouts["azuread_group"]["read"],
      local.metadata.resource_timeouts["default"]["read"]
    )
    update = try(
      local.metadata.resource_timeouts["azuread_group"]["update"],
      local.metadata.resource_timeouts["default"]["update"]
    )
    delete = try(
      local.metadata.resource_timeouts["azuread_group"]["delete"],
      local.metadata.resource_timeouts["default"]["delete"]
    )
  }
}