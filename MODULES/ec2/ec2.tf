# # #this resource will create a separate ec2 instance in the default VPC. It will error is a default VPC doesnt exist. 

resource "aws_instance" "web" {
  count                       = var.environment == "sbx" ? 0 : 0
  ami                         = data.aws_ami.example.image_id
  subnet_id                   = var.subnet_id
  associate_public_ip_address = true

  user_data = file("../MODULES/ec2/efs.sh")   #("userdata.sh")

  ebs_optimized = var.ebs_optimized

  key_name = var.key_name

  instance_type = var.environment == "sbx" ? "t2.nano" : "t2.micro"  

  vpc_security_group_ids = var.vpc_security_group

  tags = {
    Name        = "${var.environment}-instance-${count.index}"
    environment = var.environment
  }
}
