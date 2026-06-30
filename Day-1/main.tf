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
