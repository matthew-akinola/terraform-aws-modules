variable "ec2_instances" {
  description = "Map of EC2 instances to create"
  type = map(object({
    instance_type      = string
    subnet_id          = string
    security_groups    = list(string)
    iam_instance_profile = string
    user_data          = string # Optional user_data
    ec2_keypair_name   = string
    tags               = map(string)
  }))
}
