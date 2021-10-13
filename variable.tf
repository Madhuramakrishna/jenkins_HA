variable "instance_type" {
  description = "my instance type"
  default     = "t2.micro"
  type        = string
}

variable "key_pair" {
  description = "my key pair"
  default     = "general"
  type        = string
}

variable "jenkins_region" {
  description = "Jenkins Region"
  default     = "ap-south-1"
  type        = string
}
