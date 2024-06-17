# resource "aws_key_pair" "ec2_key_pair" {
#   key_name   = "ziyote-class-key"
#   public_key = tls_private_key.example.public_key_openssh
# }

# resource "tls_private_key" "example" {
#   algorithm   = "RSA"
#   ecdsa_curve = "P384"

#     provisioner "local-exec" {
   
#     command = "echo ${self.private_key_pem} > /d/Keys/ziyote-class-key"
#   }
# }

# #show exmple to send key to file:

# resource "local_file" "private_key" {
#     content  = tls_private_key.example.private_key_pem
#     filename = "${var.path}ziyote-class-key.pem"
# }

# variable "path" {
#   default = "../../../Keys/"
# }

# output "public_key" {
#   value = tls_private_key.example.private_key_pem
# }
