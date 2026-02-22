variable "instance_name" {
    type = list
  default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend"]
}

variable "zone_id" {
    type = string
  default = "Z0264884DOSR5KP2H7MK"
}

variable "domain_name" {
    type = string
  default = "ljnag.space"
}