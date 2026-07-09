resource "aws_autoscaling_group" "web_asg" {
  name                      = "terraform-web-asg"
  max_size                  = 2
  min_size                  = 2
  health_check_grace_period = 300
  health_check_type         = "ELB"
  desired_capacity          = 2
  
  vpc_zone_identifier = [
    module.network.public_subnet_1_cidr,
    module.network.public_subnet_2_cidr
  ]

  target_group_arns = [
    aws_lb_target_group.web_tg.arn
  ]

  launch_template {
    id = aws_launch_template.web_lt.id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
    value               = "Terraform-ASG-Instance"
    propagate_at_launch = true
  }
}