provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "Terraform AWS DevOps Project"
      Environment = terraform.workspace
      ManagedBy   = "Terraform"
    }
  }
}