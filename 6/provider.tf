provider "aws" {
  region = "ap-south-1"
}

#aws s3 mb s3://terrademo-01122021
#aws s3api put-object --bucket terrademo-01122021 --key 5_tfstate/

terraform {
  backend "s3" {
    bucket = "terrademo-01122021"
    key    = "5_tfstate/terraform.tfstate"
    region = "ap-south-1"
  }
}

#aws s3 ls terrademo-01122021/5_tfstate 
#aws s3 rm s3://terrademo-01122021/5_tfstate