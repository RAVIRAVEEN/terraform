variable "ingress_rule" {
    default = [
        {
         description     = "Allow All ports 443"
        from_port        = "443" # 0 means all ports
        to_port          = "443" 
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
     },
    {
      description      = "Allow All ports 80"
        from_port        = "80" # 0 means all ports
        to_port          = "80" 
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    },
  {
    description      = "Allow All ports 22"
        from_port        = "22" # 0 means all ports
        to_port          = "22" 
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
  }
    ]
}
