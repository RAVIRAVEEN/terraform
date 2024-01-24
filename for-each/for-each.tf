resource "aws_instance" "web" {
  for_each = var.instance_names
  ami           = var.ami-id #devops-practice
  instance_type = each.value
  #vpc_security_group_ids = [aws_security_group.roboshop-all.id] # this means list

  tags = {
    Name = each.key
  }

}

# resource "aws_route53_record" "www" {
#  for_each = var.instance_names
#   count = length([var.instance_names])
#   zone_id = var.zone_id
#   name    = "${var.instance_names[count.index]}.${var.domain_name}" #we need to mention domain name var
#   type    = "A"
#   ttl     = 1
#   records = [var.instance_names[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
# }

resource "aws_route53_record" "www" {
 for_each = aws_instance.web
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}" #we need to mention domain name var
  type    = "A"
  ttl     = 1
  records = [each.key == "web" ? each.value.public_ip : each.value.private_ip]
}
output "instance_info" {
    value = aws_instance.web
  
}