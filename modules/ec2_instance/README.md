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
| [aws_instance.ec2_aws_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_ami.ubuntu](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ec2_instances"></a> [ec2\_instances](#input\_ec2\_instances) | Map of EC2 instances to create | <pre>map(object({<br>    instance_type      = string<br>    subnet_id          = string<br>    security_groups    = list(string)<br>    iam_instance_profile = string<br>    user_data          = string # Optional user_data<br>    ec2_keypair_name   = string<br>    tags               = map(string)<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_id"></a> [instance\_id](#output\_instance\_id) | The EC2 Instance ID |
<!-- END_TF_DOCS -->