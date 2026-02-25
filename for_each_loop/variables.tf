variable "instances" {
    type = map
    default = {
        mongodb = "t3.micro"
        mysql = "t3.small"
    }
}

variable "zone_id" {
    type = string
  default = "Z0264884DOSR5KP2H7MK"
}

variable "domain_name" {
    type = string
  default = "ljnag.space"
}