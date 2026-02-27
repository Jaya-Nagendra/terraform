resource "aws_instance" "multienv" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = lookup(var.instance, local.environment)
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = "${var.project}-${local.environment}"
    Project = "roboshop"
    Environment = local.environment
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow-all-${local.environment}"
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
    Name = "allow-all-${local.environment}"
  }
}