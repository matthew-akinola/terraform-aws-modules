data "aws_ami" "ubuntu" {
    most_recent = true

    filter {
      name = "aws-ami"
      values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-20230413"]
    }

    filter {
      name = "virtualization-type"
      values = ["hvm"]
    }

    owners = [ "099720109477"] #canonical
}

resource "aws_instance" "ec2_aws_instance" {
  for_each = var.ec2_instances

  ami                    = data.aws_ami.ubuntu.id
  instance_type          = each.value.instance_type
  subnet_id              = each.value.subnet_id
  vpc_security_group_ids = each.value.security_groups
  iam_instance_profile   = each.value.iam_instance_profile
  key_name               = each.value.ec2_keypair_name
  user_data              = each.value.user_data ? each.value.user_data : null # Conditionally set user_data
  tags                   = each.value.tags

  lifecycle {
    ignore_changes = all
  }
}
