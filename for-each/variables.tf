variable "instance_names" {
    type = map
    default = {
      mongodb = "t2.micro"
      redis = "t2.micro"
      shipping = "t3.small"
      payment = "t2.micro"
      web = "t2.micro"
      catalogue = "t2.micro"
      mysql = "t3.small"
    }
}


variable "ami-id"{ 
    type = string
    default = "ami-0f3c7d07486cad139"
 }

 variable "zone_id" {

    default = "Z05755302BISQRJNR4ESX"
   
 }

 variable "domain_name" {
   default = "devopsrank.online"
 }