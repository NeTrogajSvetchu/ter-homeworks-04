module "vpc_subnet_1" {
  source = "./vpc_dev"
  network_id = "${module.vpc_subnet_1.netvork_id}"
  token     = var.token
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
}
/*
module "vpc_subnet_2"  {
  env = "dev2"
  source     = "./vpc_dev"
  network_id = module.vpc_subnet_2.netvork_id
  token      = var.token
  cloud_id   = var.cloud_id
  folder_id  = var.folder_id
}
/*
module "vpc_subnet_3" {
  source = "./vpc_dev"
  network_id = module.vpc_subnet_1.netvork_id
  token     = var.token
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  vpc_subnet = var.vpc_subnet_3
}
*/
module "test-vm" {
  
  source          = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
  env_name        = var.vpc_name
  network_id      = "${module.vpc_subnet_1.netvork_id}"
  subnet_zones    = [module.vpc_subnet_1.subnet_zone]
  subnet_ids      = [module.vpc_subnet_1.subnet_ids]
  image_family    = "ubuntu-2004-lts"
  public_ip       = true
  instance_count  = 1

  
  metadata = {
      user-data          = data.template_file.cloud-init.rendered 
      serial-port-enable = 1
  }
}

