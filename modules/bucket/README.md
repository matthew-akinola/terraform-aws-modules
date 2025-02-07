<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_policy.s3_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.bucket_sse](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |
| [aws_s3_bucket_versioning.s3_bucket_versioning](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |
| [aws_iam_policy_document.s3_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_buckets"></a> [buckets](#input\_buckets) | A map of S3 bucket configurations. | <pre>map(object({<br>    bucket_name          = string<br>    force_destroy        = bool<br>    policy_identifiers   = list(string)<br>    policy_actions       = list(string)<br>    versioning_status    = string<br>    sse_algorithm        = string<br>    tags                 = map(string)<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket_arns"></a> [bucket\_arns](#output\_bucket\_arns) | The ARNs of the created S3 buckets. |
| <a name="output_bucket_encryption_configurations"></a> [bucket\_encryption\_configurations](#output\_bucket\_encryption\_configurations) | The server-side encryption configurations of the S3 buckets. |
| <a name="output_bucket_names"></a> [bucket\_names](#output\_bucket\_names) | The names of the created S3 buckets. |
| <a name="output_bucket_policies"></a> [bucket\_policies](#output\_bucket\_policies) | The policies applied to the S3 buckets. |
| <a name="output_bucket_versioning_statuses"></a> [bucket\_versioning\_statuses](#output\_bucket\_versioning\_statuses) | The versioning statuses of the S3 buckets. |
<!-- END_TF_DOCS -->