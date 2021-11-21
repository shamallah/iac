variable "aws_region" {
  description = "The AWS region to create things in."
}

variable "key_name" {
  description = " SSH keys to connect to ec2 instance"
}

variable "instance_type" {
  description = "instance type for ec2"
}
variable "aws_ami" {
  description = "AWS AMI ID for the instance you want to create"
 }

