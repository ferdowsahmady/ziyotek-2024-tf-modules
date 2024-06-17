variable "environment" {
    nullable = false
}

variable "public_subnets_cidr" {
    type    = list(string)
    default = []
}

variable "private_subnets_cidr" {
    type = list(string)
    default = []
}

variable "public_subnets_az" {
    type    = list
    default = [
        "us-east-1a",
        "us-east-1b",
        "us-east-1c",   
    ]
}

variable "private_subnets_az" {
    type = list
    default = [
        "us-east-1d",
        "us-east-1e",
        "us-east-1f",        
    ]
}

variable "vpcs" {
  default = [
    "192.168.0.0/16",
    "192.178.0.0/16",
  ]
}

locals {
  vpc_name = "ziyotek"
}