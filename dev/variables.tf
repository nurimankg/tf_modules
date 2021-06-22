variable "env" {
  type = string
}

variable "cidr" {
  type = string
}

variable "cidr_blocks" {
  type = list(string)
}

variable "instance_type" {
  type = string
}