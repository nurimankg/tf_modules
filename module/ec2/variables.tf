variable "env" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "cidr_list" {
  type = list(string)
}

variable "cidr" {
  type = string
}