variable "environment" {
  type     = string
  nullable = false
  default = "sbx"
}

variable "subnet_id" {}

variable "instance_type" {}

variable "ebs_optimized" {
  default = false
}

variable "key_name" {
  type     = string
  nullable = true
}

variable "vpc_security_group" {
  type     = list
  nullable = true
}