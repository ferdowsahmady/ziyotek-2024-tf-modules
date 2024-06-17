output "public_subnets" {
    value = aws_subnet.public_subnets[0].id
}

output "private_subnets" {
    value = aws_subnet.private_subnets[1].id
  
}
output "vpc_security_group_output" {
    value = aws_security_group.allow_all.id
}