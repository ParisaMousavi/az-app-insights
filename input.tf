variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "application_type" {
  type    = string
  default = "web"
}

variable "workspace_id" {
  type = string
  default = null
}

variable "daily_data_cap_in_gb" {
  type    = number
  default = null
}

variable "daily_data_cap_notifications_disabled" {
  type    = bool
  default = null
}

variable "retention_in_days" {
  type = number
  default = 30
}

variable "additional_tags" {
  default     = {}
  description = "Additional resource tags"
  type        = map(string)
}
