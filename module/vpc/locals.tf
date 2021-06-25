locals {
  common_tags = {
    name    = "${var.env}-vpc-dev"
    env     = var.env
    project = "${var.env}-infra"
    team    = "DevOps"
    owner   = "Nur"
  }
}