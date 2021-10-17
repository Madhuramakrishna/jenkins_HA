#Create Security Group - SSH Traffic
resource "aws_security_group" "vpc-ssh" {
  name        = "vpc-ssh"
  description = "Dev VPC SSH"
#  vpc_id      = aws_vpc.main.id

  ingress {
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
  }
  

  tags = {
    Name = "VPC-SSH"
  }
}

#Create Security Group - Web Traffic
resource "aws_security_group" "vpc-web" {
  name        = "vpc-web"
  description = "Dev VPC WEB"
#  vpc_id      = aws_vpc.main.id

  ingress {
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
  }
  
  ingress {
      from_port        = 443
      to_port          = 443
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "VPC-WEB"
  }
}
