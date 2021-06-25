locals {
  common_tags = {
    name = "${var.env}-vpc-infra"
    env     = var.env
    project = "${var.env}-infra"
    team    = "DevOps"
    owner   = "Nur"
  }
}