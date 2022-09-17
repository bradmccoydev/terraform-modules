output "vpc_id" {
  value = aws_vpc.default.id
}

output "default_network_acl_id" {
  value = aws_vpc.default.default_network_acl_id
}

output "public_subnet_1" {
  value = aws_subnet.public[0].id
}

output "public_subnet_2" {
  value = aws_subnet.public[1].id
}

output "private_subnet_1" {
  value = aws_subnet.private[0].id
}

output "private_subnet_2" {
  value = aws_subnet.private[1].id
}
