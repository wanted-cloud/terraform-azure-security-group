<!-- BEGIN_TF_DOCS -->
# wanted-cloud/terraform-azure-security-group

This repository represents a template for a Terraform building block module as we think it should be done, so it's for sure opinionated but in our eyes simple and powerful. Feel free to use or contribute.

## Table of contents

- [Requirements](#requirements)
- [Providers](#providers)
- [Variables](#inputs)
- [Outputs](#outputs)
- [Resources](#resources)
- [Usage](#usage)
- [Contributing](#contributing)

## Requirements

The following requirements are needed by this module:

- <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) (~> 3.4.0)

## Providers

The following providers are used by this module:

- <a name="provider_azuread"></a> [azuread](#provider\_azuread) (~> 3.4.0)

## Required Inputs

The following input variables are required:

### <a name="input_name"></a> [name](#input\_name)

Description: The display name for the Azure AD group.

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_assignable_to_role"></a> [assignable\_to\_role](#input\_assignable\_to\_role)

Description: Whether this group can be assigned to an Azure AD role.

Type: `bool`

Default: `false`

### <a name="input_auto_subscribe_new_members"></a> [auto\_subscribe\_new\_members](#input\_auto\_subscribe\_new\_members)

Description: Whether new members are auto-subscribed to email notifications.

Type: `bool`

Default: `false`

### <a name="input_description"></a> [description](#input\_description)

Description: A description for the Azure AD group.

Type: `string`

Default: `""`

### <a name="input_external_senders_allowed"></a> [external\_senders\_allowed](#input\_external\_senders\_allowed)

Description: Whether external senders are allowed to email the group.

Type: `bool`

Default: `false`

### <a name="input_hide_from_address_lists"></a> [hide\_from\_address\_lists](#input\_hide\_from\_address\_lists)

Description: Whether to hide the group from address lists.

Type: `bool`

Default: `false`

### <a name="input_hide_from_outlook_clients"></a> [hide\_from\_outlook\_clients](#input\_hide\_from\_outlook\_clients)

Description: Whether to hide the group from Outlook clients.

Type: `bool`

Default: `false`

### <a name="input_mail_enabled"></a> [mail\_enabled](#input\_mail\_enabled)

Description: Whether the group is mail-enabled.

Type: `bool`

Default: `false`

### <a name="input_mail_nickname"></a> [mail\_nickname](#input\_mail\_nickname)

Description: The mail nickname (alias) for the group.

Type: `string`

Default: `""`

### <a name="input_members"></a> [members](#input\_members)

Description: A list of object IDs for group members.

Type: `list(string)`

Default: `[]`

### <a name="input_metadata"></a> [metadata](#input\_metadata)

Description: Metadata definitions for the module, this is optional construct allowing override of the module defaults defintions of validation expressions, error messages, resource timeouts and default tags.

Type:

```hcl
object({
    resource_timeouts = optional(
      map(
        object({
          create = optional(string, "30m")
          read   = optional(string, "5m")
          update = optional(string, "30m")
          delete = optional(string, "30m")
        })
      ), {}
    )
    tags                     = optional(map(string), {})
    validator_error_messages = optional(map(string), {})
    validator_expressions    = optional(map(string), {})
  })
```

Default: `{}`

### <a name="input_owners"></a> [owners](#input\_owners)

Description: A list of object IDs for group owners.

Type: `list(string)`

Default: `[]`

### <a name="input_prevent_duplicate_names"></a> [prevent\_duplicate\_names](#input\_prevent\_duplicate\_names)

Description: Whether to prevent duplicate group names.

Type: `bool`

Default: `false`

### <a name="input_security_enabled"></a> [security\_enabled](#input\_security\_enabled)

Description: Whether the group is security-enabled.

Type: `bool`

Default: `true`

### <a name="input_types"></a> [types](#input\_types)

Description: The types of the group. Can be 'Security', 'Unified', or both.

Type: `list(string)`

Default:

```json
[
  "Unified"
]
```

### <a name="input_visibility"></a> [visibility](#input\_visibility)

Description: Specifies the visibility of the group (Public, Private, or HiddenMembership).

Type: `string`

Default: `"Public"`

### <a name="input_writeback_enabled"></a> [writeback\_enabled](#input\_writeback\_enabled)

Description: Whether group writeback is enabled.

Type: `bool`

Default: `false`

## Outputs

The following outputs are exported:

### <a name="output_group"></a> [group](#output\_group)

Description: The Azure AD group created by this module.

### <a name="output_members"></a> [members](#output\_members)

Description: The members of the Azure AD group.

## Resources

The following resources are used by this module:

- [azuread_group.this](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/group) (resource)
- [azuread_group_member.this](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/group_member) (resource)

## Usage

> For more detailed examples navigate to `examples` folder of this repository.

Module was also published via Terraform Registry and can be used as a module from the registry.

```hcl
module "example" {
  source  = "wanted-cloud/..."
  version = "x.y.z"
}
```

### Basic usage example

The minimal usage for the module is as follows:

```hcl
module "template" {
    source = "../.."
}
```
## Contributing

_Contributions are welcomed and must follow [Code of Conduct](https://github.com/wanted-cloud/.github?tab=coc-ov-file) and common [Contributions guidelines](https://github.com/wanted-cloud/.github/blob/main/docs/CONTRIBUTING.md)._

> If you'd like to report security issue please follow [security guidelines](https://github.com/wanted-cloud/.github?tab=security-ov-file).
---
<sup><sub>_2025 &copy; All rights reserved - WANTED.solutions s.r.o._</sub></sup>
<!-- END_TF_DOCS -->