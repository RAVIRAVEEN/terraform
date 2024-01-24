# output "instance_info" {
#   value = aws_instance.web
# }

output "instance_private_ip" {
  value = aws_instance.web.private_ip
}

output "instance_public_ip" {
  value = aws_instance.web.public_ip
}

output "instance_ami" {
  value = aws_instance.web.ami
}

output "instance_public_dns" {
  value = aws_instance.web.public_dns
}