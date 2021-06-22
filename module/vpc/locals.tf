locals {
  common_tags = {
    Name = "Main_vpc"
    env     = var.env
    project = "${var.env}-infra"
    team    = "DevOps"
    owner   = "Nur"
  }
}