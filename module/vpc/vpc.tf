############### Main Vpc

resource "aws_vpc" "main_vpc" {
  cidr_block           = var.cidr
  enable_dns_hostnames = true
  tags = local.common_tags

  tags            = merge(
     local.common_tags,
     {
       Name = var.ec2_name
     }
  )
}

