# main.tf

provider "aws" {
  region = "us-east-1" # Set your desired AWS region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "demo-atlantis-bucket" # Set a unique bucket name
}

resource "aws_s3_bucket" "my_bucket_test" {
  bucket = "demo-atlantis-bucket-test" # Set a unique bucket name
}

terraform {
  backend "s3" {
    bucket  = "terraform-atlantis-state" # Set a unique bucket name for storing Terraform state
    key     = "terraform.tfstate"
    region  = "us-east-1" # Set the region of the state bucket
    encrypt = true
    profile = "791678585244_darkops-lenovo.admin"
  }
}
