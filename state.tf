terraform {
  backend "s3" {
    bucket  = "jenkinshatostore"
    key     = "terraform.tfstate"
    encrypt = "false"
    region  = "ap-south-1"
  }
}
