locals {
  ssh_key = file("~/.ssh/id_ed25519.pub")
}

locals {
  net =  {
  "net_1" = {zone = var.zone, subnet_id =var.subnet_ids}
  "net_1" = {zone = var.zone_2, subnet_id =var.subnet_ids_2}
}

}
