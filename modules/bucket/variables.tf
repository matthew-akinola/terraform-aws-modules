variable "buckets" {
  description = "A map of S3 bucket configurations."
  type = map(object({
    bucket_name          = string
    force_destroy        = bool
    policy_identifiers   = list(string)
    policy_actions       = list(string)
    versioning_status    = string
    sse_algorithm        = string
    tags                 = map(string)
  }))
}