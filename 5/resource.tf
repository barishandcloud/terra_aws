resource "aws_vpc" "demovpc1" {
  cidr_block       = var.demovpc1_cidr
  instance_tenancy = var.demovpc1_ten

  tags = {
    Name = var.demovpc1_name
  }
}

############## subnets ###############
resource "aws_subnet" "demosubnet1" {
  vpc_id     = aws_vpc.demovpc1.id
  cidr_block = var.sub1_cidr

  tags = {
    Name = var.sub1_name
  }
}

#resource "aws_subnet" "subnets" {
#  vpc_id     = aws_vpc.demovpc1.id
#  for_each   = { for i in var.subnet_list : i.sub_cidr => i }
#  cidr_block = each.value.sub_cidr
#
#  tags = {
#    Name = each.value.sub_name
#  }
#}
