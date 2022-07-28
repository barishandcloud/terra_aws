############### outputs ###############
output "vpc" {
  value = module.create_vpc
}
output "vpc_id" {
  value = module.create_vpc.vpc_id
}

output "subnets" {
  value = module.create_subnet
}

output "subnet_tags" {
  #value = [for i in module.create_net : i.vpc_arn]
  #value = [for i in module.create_net : i]
  value = { for k, v in module.create_subnet : k => v.subnet_tags }
}

output "subnet_ids" {
  value = { for k, v in module.create_subnet : k => v.subnet_id }  
}


