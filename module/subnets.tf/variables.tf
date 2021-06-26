variable "env" {
  type = string
}

variable "private_subnet_cidr" {
  type = list(string)
}

variable "public_subnet_cidr" {
  type = list(string)
}

variable "subnet_az" {
  type = list(string)

}