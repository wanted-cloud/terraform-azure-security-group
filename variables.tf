variable "mail_nickname" {
  description = "The mail nickname (alias) for the group."
  type        = string
  default     = ""
}

variable "assignable_to_role" {
  description = "Whether this group can be assigned to an Azure AD role."
  type        = bool
  default     = false
}

variable "visibility" {
  description = "Specifies the visibility of the group (Public, Private, or HiddenMembership)."
  type        = string
  default     = "Public"
}

variable "prevent_duplicate_names" {
  description = "Whether to prevent duplicate group names."
  type        = bool
  default     = false
}

variable "writeback_enabled" {
  description = "Whether group writeback is enabled."
  type        = bool
  default     = false
}

variable "external_senders_allowed" {
  description = "Whether external senders are allowed to email the group."
  type        = bool
  default     = false
}

variable "auto_subscribe_new_members" {
  description = "Whether new members are auto-subscribed to email notifications."
  type        = bool
  default     = false
}

variable "hide_from_address_lists" {
  description = "Whether to hide the group from address lists."
  type        = bool
  default     = false
}

variable "hide_from_outlook_clients" {
  description = "Whether to hide the group from Outlook clients."
  type        = bool
  default     = false
}
variable "name" {
  description = "The display name for the Azure AD group."
  type        = string
}

variable "description" {
  description = "A description for the Azure AD group."
  type        = string
  default     = ""
}

variable "owners" {
  description = "A list of object IDs for group owners."
  type        = list(string)
  default     = []
}

variable "members" {
  description = "A list of object IDs for group members."
  type        = list(string)
  default     = []
}

variable "mail_enabled" {
  description = "Whether the group is mail-enabled."
  type        = bool
  default     = false
}

variable "security_enabled" {
  description = "Whether the group is security-enabled."
  type        = bool
  default     = true
}

variable "types" {
  description = "The types of the group. Can be 'Security', 'Unified', or both."
  type        = list(string)
  default     = ["Unified"]

}
