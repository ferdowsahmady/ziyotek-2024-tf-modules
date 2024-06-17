variable "environment" {
  type     = string
  nullable = false
}

variable "subnet_id" {}

variable "ebs_optimized" {
  default = false
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  type     = string
  nullable = true
}

variable "vpc_security_group" {
  type     = list(any)
  nullable = true
}