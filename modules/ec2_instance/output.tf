output "instance_id" {
    description = "The EC2 Instance ID"
    value   = aws_instance.ec2_aws_instance.id
}