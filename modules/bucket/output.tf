output "bucket_names" {
  description = "The names of the created S3 buckets."
  value       = { for k, v in aws_s3_bucket.bucket : k => v.bucket }
}

output "bucket_arns" {
  description = "The ARNs of the created S3 buckets."
  value       = { for k, v in aws_s3_bucket.bucket : k => v.arn }
}