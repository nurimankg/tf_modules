  resource "aws_s3_bucket" "main" {
    bucket = "${var.env}-backend-tfvars"
    key    = "dev/terraform.tfvars"
    region = "us-east-1"
    tags = local.common_tags
}

