# resource "aws_db_instance" "ziyo" {
#   allocated_storage    = 10
#   db_name              = "ziyo"
#   engine               = "postgres"
#   engine_version       = "12.15"
#   instance_class       = "db.t3.micro"
#   username             = "aziza_user"
#   password             = aws_ssm_parameter.aziza.value
#   parameter_group_name = "db.postgres12"
#   skip_final_snapshot  = true
#   db_subnet_group_name = "ziyo_sub_group"
#   vpc_security_group_ids = ["sg-0215ec9cd2d2b3dd7"]
#   storage_type         = "gp2"
  
# }

# resource "aws_ssm_parameter" "aziza" {
#   name  = "my_ssm_parameter_name"
#   type  = "SecureString"
#   value = random_password.password.result
# }

# resource "random_password" "password" {
#   length  = 10
#   special = false
# }
 
