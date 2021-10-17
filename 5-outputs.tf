#Terraform OUtput values

##EC2 Instance Public IP
#output "instance_publicip" {
#  description = "EC2 Instance Public IP"
#  value       = aws_instance.jenkins_ec2instance.public_ip
#}

##EC2 Instance Public DNS

#output "instance_publicdns" {
#  description = "EC2 Instance Public DNS"
#  value       = aws_instance.jenkins_ec2instance.public_dns
#}

#Output - For loop with List
output "for_output_list" {
  description = "For loop with List"
  value       = [for instance in aws_instance.jenkins_ec2instance: instance.public_dns]
}

#Output - For loop with Map
output "for_output_map" { 
  description = "For loop with Map"
  value       = {for instance in aws_instance.jenkins_ec2instance: instance.id => instance.public_dns}
}

#Output - For loop with Map Advanced
output "for_output_map2" {
  description = "For loop with Map- Advanced"
  value       = {for c, instance in aws_instance.jenkins_ec2instance: c => instance.public_dns}
}

#Output Legacy Splat Operator (Legacy) - Returns the List
output "legacy_splat_instance_publicdns" {
  description = "Legacy Spalt Operator"
  value       = aws_instance.jenkins_ec2instance.*.public_dns
}

#Output Legacy Splat Operator (Legacy) - Returns the List
output "latest_splat_instance_publicdns" {
  description = "Generalized latest Spalt Operator"
  value       = aws_instance.jenkins_ec2instance[*].public_dns
}
