provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "ferdows-terraform-state"
    key    = "terraform_state_file_sbx"
    region = "us-east-1"
  }
}
