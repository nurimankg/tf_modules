locals {
  webserver_port = 8080
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
