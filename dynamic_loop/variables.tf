variable "instances" {
    type = map
    default = {
        mongodb = "t3.micro"
        mysql = "t3.small"
    }
}

variable "ingress_rules" {
  default = [
    {
      port = 22
      cidr = ["0.0.0.0/0"]
      description = "Allowing port 22 from internet"
    },

     {
      port = 8080
      cidr = ["0.0.0.0/0"]
      description = "Allowing port 8080 from internet"
    },

     {
      port = 3360
      cidr = ["0.0.0.0/0"]
      description = "Allowing port 3360 from internet"
    }
  ]
}