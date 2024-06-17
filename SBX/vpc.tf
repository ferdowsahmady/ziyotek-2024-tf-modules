module "vpc" {
  source      = "../MODULES/vpc"
  environment = "sbx"

  public_subnets_cidr = [
    "192.168.10.0/24",
    "192.168.20.0/24",
  ]

  private_subnets_cidr = [
    "192.168.70.0/24",
    "192.168.80.0/24",
  ]
}