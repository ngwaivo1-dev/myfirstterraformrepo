terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  cloud {
    organization = "GLOBALPRIME"
    workspaces {
      name = "myfirstterraformrepo"
    }
  }
}

provider "aws" {
  region     = "eu-central-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0ce1e3f8a7f4aafb8"
  instance_type = "t2.micro"

  tags = {
    Name = "hcp-terraform-ec2"
  }
}
