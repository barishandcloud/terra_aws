############## subnets ###############
resource "aws_subnet" "thissubnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.sub_cidr

  tags = {
    Name = var.sub_name
  }
}

