locals {
  nodejs_template_path = "../templates/lambdas/nodejs"
  output_path          = "../files"

  common_tags = {
    Project   = "4all-Workshop-infra"
    CreatedAt = timestamp()
    ManagedBy = "Terraform"
  }
}
