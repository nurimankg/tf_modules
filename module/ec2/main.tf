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