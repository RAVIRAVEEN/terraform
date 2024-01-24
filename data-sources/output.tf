output "aws_ami" {
  value = data.aws_ami.centos8.id

}

output "amazon_linux" {
    value = data.aws_ami.amazon-linux.id
  
}

output "vpc_info" {
value =  data.aws_vpc.default
}