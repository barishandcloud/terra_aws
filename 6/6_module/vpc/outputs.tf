output "vpc_arn" {
  value = aws_vpc.thisvpc.arn
}
output "vpc_id" {
  value = aws_vpc.thisvpc.id
}
output "vpc_cidr_block" {
  value = aws_vpc.thisvpc.cidr_block
}
output "vpc_instance_tenancy" {
  value = aws_vpc.thisvpc.instance_tenancy
}
output "vpc_enable_dns_support" {
  value = aws_vpc.thisvpc.enable_dns_support
}
output "vpc_enable_dns_hostnames" {
  value = aws_vpc.thisvpc.enable_dns_hostnames
}
output "vpc_enable_classiclink" {
  value = aws_vpc.thisvpc.enable_classiclink
}
output "vpc_main_route_table_id" {
  value = aws_vpc.thisvpc.main_route_table_id
}
output "vpc_default_network_acl_id" {
  value = aws_vpc.thisvpc.default_network_acl_id
}
output "vpc_default_security_group_id" {
  value = aws_vpc.thisvpc.default_security_group_id
}
output "vpc_default_route_table_id" {
  value = aws_vpc.thisvpc.default_route_table_id
}
output "vpc_ipv6_association_id" {
  value = aws_vpc.thisvpc.ipv6_association_id
}
output "vpc_ipv6_cidr_block" {
  value = aws_vpc.thisvpc.ipv6_cidr_block
}