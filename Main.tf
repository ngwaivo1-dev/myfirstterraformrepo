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
  region = var.aws_region
}


resource "aws_key_pair" "my_keypair" {
  key_name   = var.keypair_name
  public_key = file(var.public_key_path)
}

resource "aws_instance" "my_ec2" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  key_name      = aws_key_pair.my_keypair.key_name

  tags = {
    Name = var.instance_name
  }
}

