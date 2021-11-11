module "public-bastion-sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.4.0"
  # insert the 3 required variables here
  name = "public-bastion-sg"
  description = "Security group with SSH port allow for everybody"
  
  ingress_rules = ["ssh-tcp", "http-80-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]

  egress_rules = ["all-all"]

}
