# This is part of Day-4
terraform {
  backend "s3" {
    bucket         = "atul-terraform-state-2026"
    key            = "terraform-projects/Day-4/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}