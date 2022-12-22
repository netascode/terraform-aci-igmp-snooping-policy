variable "name" {
  description = "IGMP Snooping Policy name."
  type        = string

  validation {
    condition     = can(regex("^[a-zA-Z0-9_.-]{0,64}$", var.name))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `_`, `.`, `-`. Maximum characters: 64."
  }
}

variable "tenant" {
  description = "IGMP Snooping Policy's tenant name."
  type        = string

  validation {
    condition     = can(regex("^[a-zA-Z0-9_.-]{0,64}$", var.tenant))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `_`, `.`, `-`. Maximum characters: 64."
  }
}

variable "description" {
  description = "IGMP Snooping Policy description."
  type        = string
  default     = ""

  validation {
    condition     = can(regex("^[a-zA-Z0-9\\!#$%()*,-./:;@ _{|}~?&+]{0,128}$", var.description))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `\\`, `!`, `#`, `$`, `%`, `(`, `)`, `*`, `,`, `-`, `.`, `/`, `:`, `;`, `@`, ` `, `_`, `{`, `|`, }`, `~`, `?`, `&`, `+`. Maximum characters: 128."
  }
}

variable "admin_state" {
  description = "IGMP Snooping Policy administritative state."
  type        = bool
  default     = true
}

variable "fast_leave" {
  description = "IGMP Snooping Policy flag for Fast-Leave."
  type        = bool
  default     = false
}

variable "querier" {
  description = "IGMP Snooping Policy flag for querier."
  type        = bool
  default     = false
}

variable "last_member_query_interval" {
  description = "IGMP Snooping Policy last member query interval. Allowed values between 1-25."
  type        = number
  default     = 1

  validation {
    condition     = var.last_member_query_interval >= 1 && var.last_member_query_interval <= 25
    error_message = "Allowed values between 1-25."
  }
}

variable "query_interval" {
  description = "IGMP Snooping Policy query interval. Allowed values between 1-18000."
  type        = number
  default     = 125

  validation {
    condition     = var.query_interval >= 1 && var.query_interval <= 18000
    error_message = "Allowed values between 1-18000."
  }
}

variable "query_response_interval" {
  description = "IGMP Snooping Policy query response interval. Allowed values between 1-25."
  type        = number
  default     = 10

  validation {
    condition     = var.query_response_interval >= 1 && var.query_response_interval <= 10
    error_message = "Allowed values between 1-25."
  }
}

variable "start_query_count" {
  description = "IGMP Snooping Policy start query count. Allowed values between 1-10."
  type        = number
  default     = 2

  validation {
    condition     = var.start_query_count >= 1 && var.start_query_count <= 10
    error_message = "Allowed values between 1-10."
  }
}

variable "start_query_interval" {
  description = "IGMP Snooping Policy start query interval. Allowed values between 1-18000."
  type        = number
  default     = 31

  validation {
    condition     = var.start_query_interval >= 1 && var.start_query_interval <= 18000
    error_message = "Allowed values between 1-18000."
  }
}