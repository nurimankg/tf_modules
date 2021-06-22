module "s3_module" {
    source = "github.com/nurimankg/tf_modules/module/s3"
    env = var.env
}

module "vpc_module" {
  source = "github.com/nurimankg/tf_modules/module/vpc"
}