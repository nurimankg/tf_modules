variable "env" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "cidr_list" {
  type = list(string)
}

variable "ec2_name" {
  type = string
}

variable "http_port" {
  type = number
}

variable "ssh_port" {
  type = number
}
# variable "cidr" {
#   type = string
# }