terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
    region = "${var.region}"
}

resource "aws_instance" "terraform-ec2-instance" {
    ami = "${var.ami}"
    instance_type = "${var.instance_type}"
    tags = {
        Name = "terraform-ec2-instance"
    }
}