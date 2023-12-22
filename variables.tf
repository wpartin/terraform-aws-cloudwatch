variable "context" {
  description = "Pass in the appropriate label context module to this variable."
  type        = any
}

variable "description" {
  description = "The description for the created resources."
  type        = string
}

variable "enabled" {
  description = "Enable or disable the module."
  type        = bool
  default     = true
}

variable "generate_kms_key" {
  description = "Create a new KMS key to use with the log group. \"kms_key_id\" must be null and this set to \"true\" to generate."
  type        = bool
  default     = false
}

variable "kms_key_id" {
  description = "The KMS key ID to use if desired."
  type        = string
  default     = null
}

variable "log_group_class" {
  description = "The access class of the log group."
  type        = string
  default     = "STANDARD"

  validation {
    condition     = contains(["STANDARD", "INFREQUENT_ACCESS"], var.log_group_class)
    error_message = "Value must be either \"STANDARD\" or \"INFREQUENT_ACCESS\"."
  }
}

variable "log_stream_names" {
  description = "A list of log stream names if desired."
  type        = list(string)
  default     = null
}

variable "name" {
  description = "The name to apply to the resources."
  type        = string
}

variable "retention_in_days" {
  description = "The number of retention days to use for the log group."
  type        = number
  default     = 7
}

variable "skip_destroy" {
  description = "Set to true if you want the log group to be kept after Terraform destroy."
  type        = bool
  default     = false
}

variable "tags" {
  description = "The tags to apply to the resource."
  type        = map(string)
}