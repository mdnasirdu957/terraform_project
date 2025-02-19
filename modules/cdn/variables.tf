variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "acl" {
  description = "Canned ACL for the S3 bucket"
  type        = string
  default     = "private"
}

variable "versioning" {
  description = "Enable versioning for the S3 bucket"
  type        = bool
  default     = false
}

variable "force_destroy" {
  description = "Force destroy the bucket when deleting"
  type        = bool
  default     = false
}

variable "logging" {
  description = "Enable S3 bucket logging"
  type        = bool
  default     = false
}

variable "logging_bucket" {
  description = "S3 bucket where logs should be stored (required if logging is true)"
  type        = string
  default     = ""
}

variable "cdn_enabled" {
  description = "Enable or disable CloudFront CDN"
  type        = bool
  default     = true
}

variable "cdn_price_class" {
  description = "CloudFront pricing class"
  type        = string
  default     = "PriceClass_100"
}

variable "origin_domain_name" {
  description = "Domain name of the S3 bucket (used as CloudFront origin)"
  type        = string
}
