resource "aws_subnet" "public_subnets" {
  count = length(var.public_subnets_cidr)
  vpc_id            = aws_vpc.my_vpc[0].id
  cidr_block        = var.public_subnets_cidr[count.index]
  availability_zone = var.public_subnets_az[count.index]

  tags = {
    Name = "${var.environment}-public-subnet-${count.index}"
    Environment = var.environment
  }
}

resource "aws_subnet" "private_subnets" {
  count = length(var.private_subnets_cidr)
  vpc_id            = aws_vpc.my_vpc[0].id
  cidr_block        = var.private_subnets_cidr[count.index]
  availability_zone = var.private_subnets_az[count.index] 

  tags = {
    Name = "${var.environment}-private-subnet-${count.index}"
    Environment = var.environment
  }
}

