variable "environment" {
  type = string
  default = "dev"
}

variable "ami_id" {
  type = string   # this was not mandatory but we are guding to give 
  default = "ami-0220d79f3f480ecf5"
}

variable "instance_size" {
  type = string
  default = "t3.micro"
}

variable "ec2_tags" {
  type = map
  default = {
    Name = "Variables-demo"
    Project = "roboshop"
    Terraform = "true"
    Environment = "dev"
  }
}