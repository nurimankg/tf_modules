variable "env" {
  type = string
}

variable "cidr" {
  type = string
}

variable "cidr_list" {
  type = list(string)
}

variable "instance_type" {
  type = string
}

variable "ec2_name" {
  type = string
}

variable "http_port" {
  type = number
}



# variable "vpc_name" {
#   type = string
# }