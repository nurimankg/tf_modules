locals {
  common_tags = {
    Environment    = var.env
    Project = "${var.env}-infra"
    Team    = "DevOps"
    Owner   = "Nur"
  }
}