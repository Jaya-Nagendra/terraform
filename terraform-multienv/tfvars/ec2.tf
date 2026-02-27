resource "aws_instance" "ec2-tfvars" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = var.instance
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = "tfvars-${var.env}"
    Project = "roboshop"
    Environment = var.env
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow-all-${var.env}"
  description = "Allow all inbound traffic and all outbound traffic"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow-all-${var.env}"
  }
}