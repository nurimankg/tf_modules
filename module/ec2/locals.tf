locals {
  common_tags = {
    env     = var.env
    project = "${var.env}-infra"
    team    = "DevOps-01"
    owner   = "Nur"
  }
}

locals {
  webserver_port = var.http_port
  protocol       = "tcp"
}