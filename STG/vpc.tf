module "vpc" {
    source = "../MODULES/vpc"
    environment = "stg"

    public_subnets_cidr = [
        "192.168.30.0/24",
        "192.168.40.0/24",
  ]

    private_subnets_cidr = [
        "192.168.90.0/24",
        "192.168.100.0/24",
  ]
}