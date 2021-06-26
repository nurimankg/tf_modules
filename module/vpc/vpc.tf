############### Main Vpc

resource "aws_vpc" "main_vpc" {
  name  = "${var.env}-main_vpc"
  cidr_block           = var.cidr
  enable_dns_hostnames = true
  tags = local.common_tags

#   tags = {
#     Name = "Main_vpc"
#     Tean = "devops"
#     Owner = "Nur"
#   }
}
