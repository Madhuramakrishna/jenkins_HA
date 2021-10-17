resource "aws_vpc" "jenkins_vpc" {
  cidr_block = "10.2.0.0/16"

  tags = {
    "Name"   = "jenkinsvpc"
  }
}


resource "aws_instance" "jenkins_ec2instance" {
  ami               = data.aws_ami.amzlinux2.id
  instance_type     = var.instance_type
  availability_zone = "ap-south-1a"
#  count             = 1 
  user_data         = file("${path.module}/install_jenkins.sh")
  key_name          = var.instance_keypair 
  vpc_security_group_ids = [ aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id ]

  tags = {
    "Name" = "JenkinsHA01"
  }
}
