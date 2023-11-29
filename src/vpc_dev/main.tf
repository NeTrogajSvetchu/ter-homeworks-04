resource "yandex_vpc_network" "develop" {
  name = var.env_name 
}
resource "yandex_vpc_subnet" "develop" {
  
  name           = var.env_name 
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = [var.default_cidr]
}

