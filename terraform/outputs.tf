output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_1_id" {
  value = module.subnet.public_subnet_1_id
}

output "public_subnet_2_id" {
  value = module.subnet.public_subnet_2_id
}

output "private_subnet_1_id" {
  value = module.subnet.private_subnet_1_id
}

output "private_subnet_2_id" {
  value = module.subnet.private_subnet_2_id
}
output "internet_gateway_id" {
  value = module.internet_gateway.internet_gateway_id
}
output "public_route_table_id" {
  value = module.route_table.public_route_table_id
}