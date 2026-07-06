resource "aws_instance" "web_server" {
  ami = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id = module.network.public_subnet_1_cidr
  vpc_security_group_ids = [ aws_security_group.allow_traffic.id ]
  key_name = aws_key_pair.terraform_key.key_name
  associate_public_ip_address = true
  tags = {
    Name = "Terraform-Web-Server"
  }
}