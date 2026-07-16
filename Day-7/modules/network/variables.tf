variable "vpc_cidr" {
  type = string
}
variable "public_subnet_1_cidr" {
  type = string
}
variable "public_subnet_2_cidr" {
  type = string
}
variable "availability_zones" {
  description = "List of Availability Zones"
  type        = list(string)
}