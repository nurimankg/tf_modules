  resource "aws_s3_bucket" "main" {
    bucket = "backend-tfvars"
    acl = "private"
}