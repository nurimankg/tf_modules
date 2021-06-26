locals {
  webserver_port = 8080
  protocol       = "tcp"
}

locals {
  common_tags = {
    Name    = "${var.env}-ec2-dev"
    env     = var.env
    project = "${var.env}-infra"
    team    = "DevOps-01"
    owner   = "Nur"
  }
}
