variable "alias" {
  description = "KMS key alias name (without 'alias/' prefix)"
  type        = string
}

variable "description" {
  description = "Description of the KMS key purpose"
  type        = string
}

variable "deletion_window_days" {
  description = "Number of days before KMS key deletion (7-30)"
  type        = number
  default     = 30
  validation {
    condition     = var.deletion_window_days >= 7 && var.deletion_window_days <= 30
    error_message = "Must be between 7 and 30 days."
  }
}

variable "enable_key_rotation" {
  description = "Enable automatic KMS key rotation"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default     = {}
}
