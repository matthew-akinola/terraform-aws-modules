resource "aws_s3_bucket" "bucket" {

    for_each = var.buckets
    bucket = each.value.bucket_name
    force_destroy = each.value.force_destroy
    tags = each.value.tags
}

data "aws_iam_policy_document" "s3_policy" {
  
    for_each = var.buckets
    statement {
      principals {
        type = "AWS"
        identifiers = each.value.policy_identifiers
      }
      actions = each.value.policy_actions

      resources = [
        aws_s3_bucket.bucket[each.key.bucket_name].arn,
        "${aws_s3_bucket.bucket[each.key.bucket_name].arn}/*",
      ]
    }
  
}


resource "aws_s3_bucket_policy" "s3_policy" {
  
  for_each = var.buckets
  bucket = aws_s3_bucket.bucket[each.value.bucket_name].id
  policy = data.aws_iam_policy_document.s3_policy[each.key].json
  depends_on = [ aws_s3_bucket.bucket ]
}

resource "aws_s3_bucket_versioning" "s3_bucket_versioning" {

  for_each = { for k, v in var.buckets : k => v if try(v.versioning_status, null) != "" }

  bucket = aws_s3_bucket.bucket[each.key].id
  versioning_configuration {
    status = each.value.versioning_status
  }
}


resource "aws_s3_bucket_server_side_encryption_configuration" "bucket_sse" {
  for_each = var.buckets
  bucket = aws_s3_bucket.bucket[each.key.bucket_name].id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = each.value.sse_algorithm
    }
  }
  
}