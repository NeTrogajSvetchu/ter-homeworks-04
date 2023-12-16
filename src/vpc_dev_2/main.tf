
terraform {
backend "s3" {
endpoint = "storage.yandexcloud.net"
bucket = "kuxar-test-bucket"
region = "ru-central1"
key = "test/terraform.tfstate"

access_key = "**"
secret_key = "**"

skip_region_validation = true
skip_credentials_validation = true
}
}
/*
resource "yandex_storage_object" "test" {
  bucket = "kuxar-test-bucket"
  key    = "terraform"
  source = "/test/terraform.tfstate"
  /*server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = var.access_key
        sse_algorithm     = "aws:kms"
      }
}
  }
  
}
*/
resource "yandex_vpc_network" "develop" {
  name = var.env
}
resource "yandex_vpc_subnet" "vpc_subnet_1" {
  #network_id     = var.network_id
  network_id     = yandex_vpc_network.develop.id
  for_each = {for idx, value in var.vpc_subnet_1 : idx => value}
  name           = each.value ["name"]
  zone           = each.value ["zone"] 
  v4_cidr_blocks = each.value ["v4_cidr_blocks"]
}
resource "yandex_vpc_subnet" "vpc_subnet_2" {
  #network_id     = var.network_id
  network_id     = yandex_vpc_network.develop.id
  for_each = {for idx, value in var.vpc_subnet_2 : idx => value}
  name           = each.value ["name"]
  zone           = each.value ["zone"] 
  v4_cidr_blocks = each.value ["v4_cidr_blocks"]
}
resource "yandex_vpc_subnet" "vpc_subnet_3" {
  #network_id     = var.network_id
  network_id     = yandex_vpc_network.develop.id
  for_each = {for idx, value in var.vpc_subnet_3 : idx => value}
  name           = each.value ["name"]
  zone           = each.value ["zone"] 
  v4_cidr_blocks = each.value ["v4_cidr_blocks"]
}

/*
resource "yandex_vpc_subnet" "develop" {
  count          = "${length(var.public_subnet.cidrs)}"
  name           = "${var.env}${count.index + 1}"
  network_id     = yandex_vpc_network.develop.id
  zone           = element(var.public_subnet.zone,count.index)
  #v4_cidr_blocks =  element(["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"], count.index)# "${var.public_subnet.cidrs[count.index]}"
  #zone           = element(var.public_subnet.zone, count.index
  v4_cidr_blocks = element([var.public_subnet.cidrs],count.index )
  

  }
*/


/*
resource "yandex_vpc_subnet" "develop" {
  network_id     = yandex_vpc_network.develop.id
  for_each   =  {for idx, value in local.subnets  : idx => value}
    zone           = each.value ["zone"]
    v4_cidr_blocks = each.value ["v4_cidr_blocks"]
    name           = each.value ["name"]

}
/*
resource "yandex_vpc_subnet" "develop" {
  network_id     = yandex_vpc_network.develop.id
      dynamic name {
      for_each = {
        for name in var.subnets :name.name => name}  
      content {
        name = lookup(ingress.value, "name", null)
      }
    }
      dynamic zone {
        for_each = {for zone in var.subnets :zone.name => zone}
      content {
        zone = lookup(ingress.value, "zone", null)
      }
    }
      dynamic "v4_cidr_blocks" {
        for_each = {for v4_cidr_blocks in var.subnets :v4_cidr_blocks.name => v4_cidr_blocks}
          content {
            v4_cidr_blocks =lookup(ingress.value, "v4_cidr_blocks =", null)
      }
    }
}
*/
/*
resource "yandex_vpc_subnet" "develop" {
  count = 2
  network_id     = yandex_vpc_network.develop.id
  cidr_block     = "${var.sab_net.zone[count.index]}"
  zone           = "${var.sab_net.v4_cidr_blocks[count.index]}"
}
*/
/*

resource "yandex_vpc_subnet" "develop" {
  for_each   =  {for idx, value in local.subnets  : idx => value}
    zone           = each.value ["zone"]
    v4_cidr_blocks = each.value ["v4_cidr_blocks"]
    network_id     = yandex_vpc_network.develop.id
    name           = each.value ["name"]
}

/*
  /*
  #for_each = {for idx, value in var.sab_net.0 : idx => value}
  name           = var.env_name
  #zone           = each.value ["zone"]
  zone           = "var.sab_net.[0].zone"
  network_id     = yandex_vpc_network.develop.id
  #v4_cidr_blocks =  each.value ["v4_cidr_blocks"]
  v4_cidr_blocks = ["var.sab_net.0.v4_cidr_blocks"]
  */

  


