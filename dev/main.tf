module "s3_module" {
  source = "github.com/nurimankg/tf_modules/module/s3"
  env    = var.env
}

module "vpc" {
  source = "github.com/nurimankg/tf_modules/module/vpc"
  env    = var.env
}