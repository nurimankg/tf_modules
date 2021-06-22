terraform {
  backend "s3" {
    bucket = "backend-tfvars"
    key    = "s3/dev/terraform.tfvars"
    region = "us-east-1"
  }
}