output "public_ip" {
  value = aws_instance.web_server.public_ip
}

output "private_ip" {
  value = aws_instance.web_server.private_ip
}

output "public_dns" {
  value = aws_instance.web_server.public_dns
}
output "alb_dns_name" {
  description = "Application Load Balancer DNS Name"
  value       = aws_lb.web_alb.dns_name
}