############### Main Vpc

resource "aws_vpc" "main_vpc" {
  cidr_block           = var.cidr
  enable_dns_hostnames = true
}

  tags            = merge(
     local.common_tags,
     {
       Name = var.vpc_name
     }
  )

