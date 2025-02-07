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



# buckets = {
#   "bucket1" = {
#     bucket_name        = "my-bucket-1"
#     force_destroy      = true
#     policy_identifiers = ["arn:aws:iam::123456789012:root"]
#     policy_actions     = ["s3:GetObject", "s3:PutObject"]
#     versioning_status  = "Enabled"
#     sse_algorithm      = "aws:kms"
#     tags               = {
#       Name = "My Bucket 1"
#       Environment = "Production"
#     }
# }