module "s3_module" {
  source = "github.com/nurimankg/tf_modules/module/s3"
  env    = var.env
}

module "vpc" {
  source = "github.com/nurimankg/tf_modules/module/vpc"
  cidr   = var.cidr
}

module "ec2_instance" {
  source        = "github.com/nurimankg/tf_modules/module/ec2"
  env           = var.env
  instance_type = var.instance_type
  cidr          = var.cidr_list
}