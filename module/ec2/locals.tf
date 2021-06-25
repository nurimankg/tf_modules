locals {
  webserver_port = 80
  protocol       = "tcp"
}

locals {
  common_tags = {
    name    = "${var.env}-ec2-dev"
    env     = var.env
    project = "${var.env}-infra"
    team    = "DevOps"
    owner   = "Nur"
  }
}
