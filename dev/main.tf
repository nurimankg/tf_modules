module "s3_module" {
  source = "github.com/nurimankg/tf_modules/module/s3"
  env    = var.env
}

module "vpc" {
  source = "github.com/nurimankg/tf_modules/module/vpc"
  cidr   = var.cidr
  env   = var.env
}

module "ec2_instance" {
  source          = "github.com/nurimankg/tf_modules/module/ec2"
  env             = var.env
  instance_type   = var.instance_type
  cidr_list       = var.cidr_list
  ec2_name        = var.ec2_name
}