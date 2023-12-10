module "vpc_subnet_1" {
  source     = "./vpc_dev"
  network_id = "${module.vpc_subnet_1.netvork_id}"
  token      = var.token
  cloud_id   = var.cloud_id
  folder_id  = var.folder_id
}

module "vm_Mysql" {
  source    = "./vm_Mysql"
  name_vm_Mysql = var.name_vm_Mysql
  zone = module.vpc_subnet_1.subnet_zone
  zone_2 = module.vpc_subnet_1.subnet_zone_2
  token     = var.token
  network_id = "${module.vpc_subnet_1.netvork_id}"
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  subnet_ids = module.vpc_subnet_1.subnet_ids
  subnet_ids_2 = module.vpc_subnet_1.subnet_ids_2
}

module "base" {
  source = "./vm_Mysql/base"
  cluster_id = module.vm_Mysql.cluster_id
}
module "name" {
  source = "./vm_Mysql/user"
  cluster_id = module.vm_Mysql.cluster_id
  password = var.user_bd_password
}

/*
module "vm2_Mysql" {
  source = "./vm_Mysql/vm2_Mysql"
  name_vm_Mysql = var.name_vm_Mysql_2
  zone = module.vpc_subnet_1.subnet_zone
  token     = var.token
  network_id = "${module.vpc_subnet_1.netvork_id}"
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  subnet_ids = module.vpc_subnet_1.subnet_ids
}*/
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
  image_family    = var.image_family_test-vm
  public_ip       = var.public_ip_test-vm
  instance_count  = var.instance_count

  
  metadata = {
      user-data          = data.template_file.cloud-init.rendered 
      serial-port-enable = "${var.metadata_serial-port-enable}"
  }
}

