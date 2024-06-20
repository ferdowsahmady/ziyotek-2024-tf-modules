module "ec2" {
  source = "../MODULES/ec2"
  environment        = "sbx"
  instance_type      = {}
  subnet_id          = module.vpc.private_subnets
  key_name           = null
  vpc_security_group = [module.vpc.vpc_security_group_output]
}


