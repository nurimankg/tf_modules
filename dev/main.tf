module "s3_module" {
    source = "github.com/nurimankg/tf_modules/module/s3"
    
}

module "vpc" {
  source = "github.com/nurimankg/tf_modules/module/vpc"
}