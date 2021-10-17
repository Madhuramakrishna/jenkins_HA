variable "Jenkins_region" {
  description = "Region in which Jenkins server to be created"
  default     = "ap-south-1"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
  type        = string
}

variable "instance_keypair" {
  description = "AWS EC2 key pair that need to be associated with EC2 Instance"
  default     = "general"
  type        = string
}
