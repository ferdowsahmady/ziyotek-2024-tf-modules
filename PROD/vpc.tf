module "vpc" {
    source = "../MODULES/vpc"
    environment = "prod"

    public_subnets_cidr = [
        "192.168.50.0/24",
        "192.168.60.0/24",
  ]

    private_subnets_cidr = [
        "192.168.110.0/24",
        "192.168.120.0/24",
  ]
}