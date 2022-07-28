output "subnet_id" {
  value = aws_subnet.thissubnet.id
}
output "subnet_arn" {
  value = aws_subnet.thissubnet.arn
}
output "subnet_tags" {
  value = aws_subnet.thissubnet.tags_all
}