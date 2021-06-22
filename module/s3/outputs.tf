output "s3_name" {
    value = aws_s3_bucket.main.id
}

output "s3_arn" {
    value = aws_s3_bucket.main.arn
}