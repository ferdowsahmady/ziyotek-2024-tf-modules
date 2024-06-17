resource "aws_vpc" "my_vpc" {
  count = length(var.vpcs)
  cidr_block = var.vpcs[count.index]

  tags = {
    Name =  "${var.environment}-vpc-${count.index}"
    Environment = var.environment
  }
}