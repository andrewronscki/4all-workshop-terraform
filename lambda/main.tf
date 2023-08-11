terraform {
  required_version = "1.4.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.12.0"
    }
  }
}

provider "aws" {
  region  = lookup(var.aws_region, local.env)
  profile = var.aws_profile
}

module "getCities" {
  source        = "./cronjob"
  env           = local.env
  function_name = "get-cities"
}

module "normal" {
  source        = "./normal"
  env           = local.env
  function_name = "teste-normal"
}
