module "ec2" {
  source = "../MODULES/ec2"

  environment   = "stg"
  instance_type = "t2.micro"
  subnet_id = module.vpc.private_subnets
  key_name = null
  vpc_security_group = null

}