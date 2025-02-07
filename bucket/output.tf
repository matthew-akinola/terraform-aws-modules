output "bucket_names" {
  description = "The names of the created S3 buckets."
  value       = { for k, v in aws_s3_bucket.bucket : k => v.bucket }
}

output "bucket_arns" {
  description = "The ARNs of the created S3 buckets."
  value       = { for k, v in aws_s3_bucket.bucket : k => v.arn }
}

output "bucket_policies" {
  description = "The policies applied to the S3 buckets."
  value       = { for k, v in aws_s3_bucket_policy.s3_policy : k => v.policy }
}

output "bucket_versioning_statuses" {
  description = "The versioning statuses of the S3 buckets."
  value       = { for k, v in aws_s3_bucket_versioning.s3_bucket_versioning : k => v.versioning_configuration[0].status }
}

output "bucket_encryption_configurations" {
  description = "The server-side encryption configurations of the S3 buckets."
  value       = { for k, v in aws_s3_bucket_server_side_encryption_configuration.bucket_sse : k => v.rule[0].apply_server_side_encryption_by_default[0] }
}