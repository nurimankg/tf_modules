locals {
  common_tags = {
    name = "main_vpc"
    env     = var.env
    project = "${var.env}-wordpress"
    team    = "DevOps"
    owner   = "Nur"
  }
}