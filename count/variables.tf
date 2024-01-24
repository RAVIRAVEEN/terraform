variable "instance_names" {
    type = list
    default = [ "mongodb", "redis", "catalogue", "cart", "user", "shipping", "mysql", "payment","rabbitmq","dispatch", "web"]
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