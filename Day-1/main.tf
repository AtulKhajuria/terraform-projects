resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "main"
  }
}
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "terraform-igw"
  }
}
resource "aws_subnet" "public_subnet_1" {
    vpc_id = aws_vpc.main.id
  cidr_block = var.public_subnet_1_cidr
}
resource "aws_subnet" "public_subnet_2" {
    vpc_id = aws_vpc.main.id
  cidr_block = var.public_subnet_2_cidr
}
resource "aws_route_table" "public_rt" {
    vpc_id = aws_vpc.main.id
    tags = {
      Name = "public-route-table"
    }
}
resource "aws_route" "internet_access" {
  route_table_id = aws_route_table.public_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.igw.id
}
resource "aws_route_table_association" "public_subnet_1" {
  route_table_id = aws_route_table.public_rt.id
  subnet_id = aws_subnet.public_subnet_1.id
}
resource "aws_route_table_association" "public_subnet_2" {
  route_table_id = aws_route_table.public_rt.id
  subnet_id = aws_subnet.public_subnet_2.id
}