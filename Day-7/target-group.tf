resource "aws_lb_target_group" "web_tg" {
  name = "terraform-web-tg"
  port = 80
  protocol = "HTTP"
  vpc_id = module.network.vpc_id
  health_check {
    path = "/"
    protocol = "HTTP"
    matcher = "200"
    interval = 30
    timeout = 5
    healthy_threshold = 2
    unhealthy_threshold = 2
  }
  tags = {
    Name = "terraform-web-tg"
  }
}