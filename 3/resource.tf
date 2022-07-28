resource "aws_vpc" "demovpc1" {
  cidr_block       = var.demovpc1_cidr
  instance_tenancy = var.demovpc1_ten

  tags = {
    Name = var.demovpc1_name
  }
}

############### subnets ###############
resource "aws_subnet" "demosubnet1" {
  vpc_id     = aws_vpc.demovpc1.id
  cidr_block = var.sub1_cidr

  tags = {
    Name = var.sub1_name
  }
}

