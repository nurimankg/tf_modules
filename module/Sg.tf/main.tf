resource "aws_security_group" "webserver_sg" {
  name        = "${var.env}-webserver-sg"
  description = "sg created by tf"
  ingress {
    from_port   = local.webserver_port
    to_port     = local.webserver_port
    protocol    = local.protocol
    cidr_blocks = var.cidr_list
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.cidr_list
  }
}