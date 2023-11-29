locals {
  ssh_key = file("~/.ssh/id_ed25519.pub")
}
/*
locals {
  yandex_vpc_network = module.vpc_dev.resource.yandex_vpc_network.develop.id
 
}

locals {
  yandex_vpc_subnet = module.vpc_dev.resource.yandex_vpc_subnet.develop.id
 
}*/