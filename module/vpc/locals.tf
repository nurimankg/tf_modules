locals {
  common_tags = {
    Name = "${var.env}-vpc-infra"
    env     = var.env
    project = "${var.env}-infra"
    team    = "DevOps"
    owner   = "Nur"
  }
}