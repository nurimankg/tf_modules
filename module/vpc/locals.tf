locals {
  common_tags = {
    name = "Main_vpc"
    env     = var.env
    project = "${var.env}-infra"
    team    = "DevOps"
    owner   = "Nur"
  }
}