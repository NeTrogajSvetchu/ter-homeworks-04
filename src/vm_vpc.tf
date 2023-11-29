module "vpc_dev" {
  source = "./vpc_dev"
  
  token     = var.token
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  
}

module "test-vm" {
  
  source          = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
  env_name        = var.vpc_name
  network_id      = module.vpc_dev.netvork_id
  #subnet_zones    = ["ru-central1-a"]
  subnet_zones    = module.vpc_dev.*.zone
  subnet_ids      = [module.vpc_dev.sabnet_id]
  image_family    = "ubuntu-2004-lts"
  public_ip       = true
  
  metadata = {
      user-data          = data.template_file.cloud-init.rendered 
      serial-port-enable = 1
  }
}

