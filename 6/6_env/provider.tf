provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "terrademo-01122021"
    key    = "6_tfstate/terraform.tfstate"
    region = "ap-south-1"
  }
}
