variable "vpc_cidr" {
  type = string
}
variable "public_subnet_1_cidr" {
  type = string
}
variable "public_subnet_2_cidr" {
  type = string
}
variable "aws_region" {
  type = string
}
variable "my_ip" {
  type = string
}
variable "instance_type" {
  type = string
  default = "t3.micro"
}
variable "availability_zones" {
  description = "List of Availability Zones"
  type        = list(string)
}