############### Main Vpc

resource "aws_vpc" "main_vpc" {
  cidr_block           = var.cidr
  enable_dns_hostnames = true

  tags = {
    Name = "Main_vpc"
    Tean = "devops"
    Owner = "Nur"
  }
}
