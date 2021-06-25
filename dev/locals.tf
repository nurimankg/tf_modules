locals {
  webserver_port = 80
  protocol       = "tcp"
}

locals {
  common_tags = {
    env     = var.env
    project = "${var.env}-infra"
    team    = "DevOps"
    owner   = "Nur"
  }
}
