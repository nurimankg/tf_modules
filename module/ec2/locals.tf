locals {
  webserver_port = var.http_port
  protocol       = "tcp"
}

locals {
  common_tags = {
    env     = var.env
    project = "${var.env}-infra"
    team    = "DevOps-01"
    owner   = "Nur"
  }
}
