resource "aws_lb" "web_alb" {
  name               = "terraform-web-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.allow_traffic.id]
  subnets            = [
    module.network.public_subnet_1_cidr,
    module.network.public_subnet_2_cidr
    ]

  tags = {
    Name = "terraform-web-alb"
  }
}