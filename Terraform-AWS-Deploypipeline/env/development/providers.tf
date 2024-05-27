terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
  }
}

provider "aws" {
  region  = "ap-northeast-1"
  profile = var.profile
  default_tags {
    tags = {
      Name        = "${local.general.name_prefix}-${var.env}"
      Environment = var.env
      Terraform-Managed = "True"
    }
  }
}
