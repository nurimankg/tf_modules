  resource "aws_s3_bucket" "main" {
    bucket = "${var.env}-backend-tfvars"
    tags = local.common_tags
}

