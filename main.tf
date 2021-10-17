#resource "aws_vpc" "jenkins_vpc" {
#  cidr_block = "10.2.0.0/16"

#  tags = {
#    "Name"   = "jenkinsvpc"
#  }
#}

resource "aws_instance" "jenkins_ec2instance" {
  ami               = data.aws_ami.amzlinux2.id
#  instance_type     = var.instance_type
  instance_type     = var.instance_type_list[1]  # For list
#  instance_type     = var.instance_type_map["dev"] # For Map
  availability_zone = "ap-south-1a"
  count             = 2 
  user_data         = file("${path.module}/install_jenkins.sh")
  key_name          = var.instance_keypair 
  vpc_security_group_ids = [ aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id ]

  tags = {
    "Name" = "JenkinsHA-${count.index}"
  }
}
