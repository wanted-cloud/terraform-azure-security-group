resource "azuread_group_member" "this" {
  for_each         = { for member in var.members : member => member if member != "" }
  group_object_id  = azuread_group.this.object_id
  member_object_id = each.value

  timeouts {
    create = try(
      local.metadata.resource_timeouts["azuread_group_member"]["create"],
      local.metadata.resource_timeouts["default"]["create"]
    )
    read = try(
      local.metadata.resource_timeouts["azuread_group_member"]["read"],
      local.metadata.resource_timeouts["default"]["read"]
    )
    delete = try(
      local.metadata.resource_timeouts["azuread_group_member"]["delete"],
      local.metadata.resource_timeouts["default"]["delete"]
    )
  }
}