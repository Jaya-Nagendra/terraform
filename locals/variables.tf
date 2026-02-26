variable "name" {
  default = "local"
}

variable "env" {
  default = "dev"
}


#this will not work in variables so will use locals 
# variable "instance_name" {
#   default = "${var.name}-${var.env}"
# }
