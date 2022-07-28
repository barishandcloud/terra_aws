resource "aws_vpc" "thisvpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.vpc_ten

  tags = {
    Name = var.vpc_name
  }
}


