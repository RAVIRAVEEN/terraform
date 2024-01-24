resource "aws_instance" "web" {
  ami           = var.ami-id #devops-practice
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.roboshop-all.id] # this means list

  tags = {
    Name = "HelloTerraform"
  }
}
