variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
  default     = "eu-central-1"
}

variable "instance_ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-015f3aa67b494b27e" 
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "Mynewlyec2"
}

variable "keypair_name" {
  description = "Name to assign to the AWS key pair"
  type        = string
  default     = "LambdaEc2Keypair"
}



