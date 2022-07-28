provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "terrademo-01122021"
    key    = "7_tfstate/terraform.tfstate"
    region = "ap-south-1"
  }
}


data "terraform_remote_state" "net" {
  backend = "s3"
  config = {
    bucket = "terrademo-01122021"
    key    = "6_tfstate/terraform.tfstate"
    region = "ap-south-1"
  }
}

variable "demo_subnetname" {
  description = "he gave me subnet name"
  type        = string
  default     = "demosubnet2"
}

output "demosub_findid" {
  value = local.subnet_id
}

locals {
  #name = [for i in (values(data.terraform_remote_state.net.outputs.subnet_tags)) : i.Name]
  #found = contains(local.name, var.demo_subnetname)
  #vpc_id     = data.terraform_remote_state.net.outputs.vpc_id
  #test1 = [for i in (values(data.terraform_remote_state.net.outputs.subnet_tags)) : i.Name]
  #test2 = [for i in (values(data.terraform_remote_state.net.outputs.subnets)) : i.subnet_id]  
  subnet_id  = lookup(local.subnet_zip, "demosubnet2")
  found = contains([for i in (values(data.terraform_remote_state.net.outputs.subnet_tags)) : i.Name], var.demo_subnetname)  
  subnet_zip = zipmap([for i in(values(data.terraform_remote_state.net.outputs.subnet_tags)) : i.Name], [for i in(values(data.terraform_remote_state.net.outputs.subnets)) : i.subnet_id])
  
}

data "aws_ami" "amazon-linux-2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "ec2_public" {
  count                       = local.found == true ? 1 : 0
  ami                         = data.aws_ami.amazon-linux-2.id
  associate_public_ip_address = false
  instance_type               = "t2.micro"
  subnet_id                   = local.subnet_id #lookup(local.subnet_zip, "demosubnet2")

  tags = {
    "Name" = "testbox"
  }
}