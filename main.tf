resource "aws_vpc" "jenkins_vpc" {
  cidr_block = "10.2.0.0/16"
  tags = {
    "Name" = "jenkinsvpc"
  }
}


resource "aws_instance" "jenkins_ec2instance" {
  ami = "ami-041d6256ed0f2061c"
  instance_type = var.instance_type
  availability_zone = "ap-south-1a"
  count = 2 
#  key_pair = "general"

  tags = {
    name = "jha01"
  }
}
