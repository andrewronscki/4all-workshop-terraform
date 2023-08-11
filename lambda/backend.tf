terraform {
  backend "s3" {
    bucket         = "4all-workshop-terraform-state"
    key            = "lambdas/terraform.tfstate"
    dynamodb_table = "4all-workshop-terraform-state"
    region         = "us-east-1"
    profile        = "default"
  }
}
