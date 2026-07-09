resource "aws_launch_template" "web_lt" {
  name_prefix = "terraform-web"
  image_id = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name = aws_key_pair.terraform_key.key_name
  network_interfaces {
  associate_public_ip_address = true
  security_groups             = [aws_security_group.allow_traffic.id]
}
  user_data = base64encode(file("${path.module}/user_data.sh"))
  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "Terraform-Web-Server"
    }
  }

}