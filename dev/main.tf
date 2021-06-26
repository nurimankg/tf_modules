module "s3_module" {
  source = "github.com/nurimankg/tf_modules/module/s3"
  
  env    = var.env
}

module "vpc" {
  source   = "github.com/nurimankg/tf_modules/module/vpc"
  
  cidr     = var.cidr
  env      = var.env
  # vpc_name = var.vpc_name
}

module "ec2_instance" {
  source        = "github.com/nurimankg/tf_modules/module/ec2"
  
  env           = var.env
  instance_type = var.instance_type
  ec2_name      = var.ec2_name
  
}

module "web_sg" {
  source = "github.com/nurimankg/tf_modules/module/Sg.tf"
  
  env           = var.env
  http_port     = var.webserver_port
  cidr_list     = var.cidr_list
}