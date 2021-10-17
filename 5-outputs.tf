#Terraform OUtput values

#EC2 Instance Public IP
output "instance_publicip" {
  description = "EC2 Instance Public IP"
  value       = aws_instance.jenkins_ec2instance.public_ip
}

#EC2 Instance Public DNS

output "instance_publicdns" {
  description = "EC2 Instance Public DNS"
  value       = aws_instance.jenkins_ec2instance.public_dns
} 
