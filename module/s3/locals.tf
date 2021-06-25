locals {
  common_tags = {
    env     = var.env
    project = "${var.env}-infra"
    team    = "DevOps"
    owner   = "Nur"
  }
}