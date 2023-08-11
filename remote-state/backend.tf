terraform {
  required_version = "1.4.6"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.8.0"
    }
  }
  backend "s3" {
    bucket         = "4all-workshop-terraform-state"
    key            = "global/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "4all-workshop-terraform-state"
    profile        = "default"
  }
}
provider "aws" {
  profile = var.aws_profile
  region  = var.aws_region
}
