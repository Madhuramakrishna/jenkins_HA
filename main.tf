resource "aws_instance" "jha_ec2instance" {
  ami = "ami-041d6256ed0f2061c"
  instance_type = "t2.micro"
  availability_zone = "ap-south-1a"

  tags = {
    name = "jha01"
  }
}
