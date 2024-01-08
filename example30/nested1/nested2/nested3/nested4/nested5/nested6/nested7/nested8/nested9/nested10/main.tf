terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.53.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_ebs_volume" "example" {
  availability_zone = "us-west-2a"
  size              = 4
}
