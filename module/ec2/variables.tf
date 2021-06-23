variable "env" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "cidr_list" {
  type = string
}

variable "cidr" {
  type = list(string)
}