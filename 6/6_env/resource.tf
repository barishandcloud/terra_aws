module "create_vpc" {
  source   = "../6_module/vpc"
  vpc_cidr = var.vpc1_cidr
  vpc_name = var.vpc1_name
  vpc_ten  = var.vpc1_ten
}

module "create_subnet" {
  source   = "../6_module/subnet"
  depends_on = [module.create_vpc]
  vpc_id = module.create_vpc.vpc_id
  for_each = { for i in var.subnet1_list : i.sub_cidr => i }
  sub_cidr = each.value.sub_cidr
  sub_name = each.value.sub_name
}