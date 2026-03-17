variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
}

variable "kms_key_arn" {
  description = "KMS key ARN for bucket encryption. If null used AES256"
  type        = string
  default     = null
}

variable "noncurrent_version_expiration_days" {
  description = "Number of days noncurrent object versions"
  type        = number
  default     = 90
  validation {
    condition     = var.noncurrent_version_expiration_days > 0
    error_message = "Must be more than 0."
  }
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default     = {}
}
