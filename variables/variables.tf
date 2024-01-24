variable "ami-id"{ 
    type = string
    default = "ami-0f3c7d07486cad139"
}
 
variable "instance_type" {
    type = string
   default = "t3.mirco"
} 

variable "tags" {
    type = map
    default = {
        name = "HelloTerraform"
        project = "Roboshop"
        component = "web"
        envinorment = "DEV"
        terraform = "true"
    }
  
}

variable "sg-name" {
    type = string
    default = "roboshop-all"
}

variable "sg-description" {
    type = string
    default = "allow all ports"
}

variable "inbound-from-port" {
    type = number
    default = 0
}

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}