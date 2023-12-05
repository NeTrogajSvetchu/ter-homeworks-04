output source {
  value = "./vpc_dev"
}

output netvork_id {
  value = local.id
}


output "subnet_ids" {
  value = yandex_vpc_subnet.vpc_subnet_1[0].id
}
output "subnet_zone" {
  value = yandex_vpc_subnet.vpc_subnet_1[0].zone
}
output v4_cidr_blocks {
  value = yandex_vpc_subnet.vpc_subnet_1[0].v4_cidr_blocks
}
output "subnet_ids_1" {
  value = yandex_vpc_subnet.vpc_subnet_1
}
output "subnet_ids_2" {
  value = yandex_vpc_subnet.vpc_subnet_2[0].id
}


/*
output "subnet_ids" {
  value = yandex_vpc_subnet.vpc_subnet[*].id
}

output "subnet_zone" {
  value = yandex_vpc_subnet.vpc_subnet[*].zone
}
output v4_cidr_blocks {
  value = yandex_vpc_subnet.vpc_subnet[*].v4_cidr_blocks
}
/*output "zone" {
  #value = yandex_vpc_subnet.develop.zone
  value = {  for_each  = {for idx, zone in local.subnets.0.zone : idx => zone}
}
}


output "sabnet_id" {
  #value = yandex_vpc_subnet.develop.id
 value = {  for_each  = {for idx, id in yandex_vpc_subnet.develop.id : idx => id}
}
}

/*
output sabnet_id {
  value = {
    #for_each   = toset([for develop in yandex_vpc_subnet.develop[0] : develop.id])
    
}
}
/*
output v4_cidr_blocks {
  value = yandex_vpc_subnet.develop.*
}
*/
/*


*/
