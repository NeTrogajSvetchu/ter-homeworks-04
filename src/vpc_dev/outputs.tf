output zone {
  value = var.default_zone
}

output v4_cidr_blocks {
  value = var.default_cidr
}

output env_name {
  value = var.env_name
}

output source {
  value = "./vpc_dev"
}

output netvork_id {
  value = yandex_vpc_network.develop.id
}

output sabnet_id {
  value = yandex_vpc_subnet.develop.id
}