locals {
  common_tags = {
    Name = "Main_vpc"
    Environment    = var.env
    Project = "${var.env}-infra"
    Team    = "DevOps"
    Owner   = "Nur"
  }
}