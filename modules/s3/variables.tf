variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default     = {}
}

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
  default     = 0
  validation {
    condition     = var.noncurrent_version_expiration_days >= 0
    error_message = "Value must be 0 (disabled) or a positive number of days."
  }
}

variable "enable_versioning" {
  description = "Enable versioning bucket"
  type        = bool
  default     = true
}

variable "enforce_ssl" {
  description = "Enable bucket policy to enforce ssl"
  type        = bool
  default     = true
}
