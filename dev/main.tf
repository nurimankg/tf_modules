module "s3_module" {
    source = "github.com/nurimankg/tf_modules"
    env = "dev"
}

# output "bucket_name" {
#     value = module.s3_module.s3_name
# }

# output "bucket_arn" {
#     value = module.s3_module.s3_arn
# }
