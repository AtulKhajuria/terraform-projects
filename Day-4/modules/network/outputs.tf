output "vpc_id" {
  value = aws_vpc.main.id
}
output "public_subnet_1_cidr" {
  value = aws_subnet.public_subnet_1.id
}
output "public_subnet_2_cidr" {
  value = aws_subnet.public_subnet_2.id
}