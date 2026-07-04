# This is part of Day-3
terraform {
  backend "s3" {
    bucket         = "atul-terraform-state-2026"
    key            = "terraform-projects/Day-2/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}