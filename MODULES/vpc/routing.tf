resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.my_vpc[0].id
    tags = {
      Name = "${var.environment}-igw"
      Environment = var.environment
  }
}

resource "aws_route_table" "training" {
  vpc_id = aws_vpc.my_vpc[0].id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
    tags = {
    Name    =   "${var.environment}-rtb"
    Environment = var.environment
  }
}

resource "aws_route_table_association" "a" {
  count = length(var.public_subnets_cidr)
  subnet_id      = aws_subnet.public_subnets[count.index].id
  route_table_id = aws_route_table.training.id
}


