resource "aws_instance" "webserver" {
  ami             = data.aws_ami.amazon_centos.image_id
  instance_type   = var.instance_type
  key_name        = aws_key_pair.terraform_server.key_name
  vpc_security_group_ids = [aws_security_group.webserver_sg.id]
  root_block_device {
    delete_on_termination = true
  }
  tags            = merge(
     local.common_tags,
     {
       Name = var.ec2_name
     }
  )
}

resource "aws_security_group" "webserver_sg" {
  name        = "${var.env}-webserver-sg"
  description = "sg created by tf"
  ingress {
    from_port   = local.webserver_port
    to_port     = local.webserver_port
    protocol    = local.protocol
    cidr_blocks = var.cidr_list
  }

    ingress {
    from_port   = local.web_ssh_port
    to_port     = local.web_ssh_port
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




# data "template_file" "user_data" {
#   template = file("${path.module}/user-data.sh")
#   vars = {
#     env = var.env
#     # db  = data.terraform_remote_state.rds.outputs.db_address
#   }
# }

data "aws_ami" "amazon_centos" {
  most_recent = true
  owners      = ["aws-marketplace"]

  filter {
    name   = "name"
    values = ["CentOS Linux 7 x86_64 HVM EBS*"]
  }

  filter {
    name   = "product-code"
    values = ["*aw0evgkw8e5c1q413zgy5pjce*"]
  }
}

resource "aws_key_pair" "terraform_server" {
  key_name   = "${var.env}-terraform_server"
  public_key = file("~/.ssh/id_rsa.pub")
}