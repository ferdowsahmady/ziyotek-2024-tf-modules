resource "aws_security_group" "allow_all" {
  name        = "${var.environment}_allow_all"
  description = "Allow ALL inbound traffic in ${var.environment}"
  depends_on = [aws_vpc.my_vpc]
  vpc_id      = aws_vpc.my_vpc[0].id

  tags = {
    "Name" = "${var.environment}-allow_all" 
  }

  ingress {
    description = "All from VPC"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}