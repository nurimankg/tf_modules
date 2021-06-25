locals {
  common_tags = {
    name    = "${var.env}-s3-dev"
    env     = var.env
    project = "${var.env}-infra"
    team    = "DevOps"
    owner   = "Nur"
  }
}