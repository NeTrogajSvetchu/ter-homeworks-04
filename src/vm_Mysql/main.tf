/*resource "yandex_mdb_mysql_user" "managed" {
	cluster_id = yandex_mdb_mysql_cluster.managed.id
    name       = "ubuntu"
    password   = "password"
/*
    permission {
      database_name = yandex_mdb_mysql_database.managed.name
      roles         = ["ALL"]
    }

    permission {
      database_name = yandex_mdb_mysql_database.managed.name
      roles         = ["ALL", "INSERT"]
    }

	connection_limits {
	  max_questions_per_hour   = 10
	  max_updates_per_hour     = 20
	  max_connections_per_hour = 30
	  max_user_connections     = 40
	}
    
	global_permissions = ["PROCESS"]

	authentication_plugin = "SHA256_PASSWORD"
}
*/

resource "yandex_mdb_mysql_cluster" "managed" {
  
  name        = var.name_vm_Mysql
  environment = var.environment_yandex_mdb_mysql_cluster_managed
  network_id  = var.network_id
  version     = var.version_yandex_mdb_mysql_cluster_managed
  resources {
    resource_preset_id = var.resources.resource_preset_id
    disk_type_id       = var.resources.disk_type_id
    disk_size          = var.resources.disk_size
  }

  mysql_config = {
    sql_mode                      = "${var.mysql_config.sql_mode}"
    max_connections               = "${var.mysql_config.max_connections}"
    default_authentication_plugin = "${var.mysql_config.default_authentication_plugin}"
    innodb_print_all_deadlocks    ="${var.mysql_config.innodb_print_all_deadlocks}"

  }
  host {
    zone = var.zone
    subnet_id = var.subnet_ids
  }

    host {
    zone      = var.zone_2
    subnet_id = var.subnet_ids_2
  }
}
  /*
dynamic "host" {
  for_each = local.net
  content {
      name = each.key
      zone      = each.value.zone
      subnet_id = each.value.subnet_id
  }
  */




/*
  host {
    
    zone      = var.zone
    subnet_id = var.subnet_ids
  }
/*
  host {
    subnet_ids = var.subnet_ids_2
    zone = var.zone_2
  }
/*
host{
    zone      = "${var.a ?  var.zone :  var.zone_2}"
    subnet_id = "${var.a ? var.subnet_ids : var.subnet_ids_2}"
  }
*/
/*
  host{
    zone      = "${var.a ?  var.zone :  each.value ["zone"]}"
    subnet_id = var.a ? var.subnet_ids : each.value ["subnet_ids"]
  }
  */
/*
   metadata = {
      user-data          = data.template_file.cloud-init.rendered 
      serial-port-enable = var.metadata.serial-port-enable
  }
  */

/*
module "vm2_Mysql" {
  source = "./vm2_Mysql"
  name_vm_Mysql = var.name_vm_Mysql
  zone = module.vpc_subnet_1.subnet_zone
  token     = var.token
  network_id = "${module.vpc_subnet_1.netvork_id}"
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  subnet_ids = module.vpc_subnet_1.subnet_ids
}
*/
/*
resource "yandex_vpc_network" "foo" {}

resource "yandex_vpc_subnet" "foo" {
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.foo.id
  v4_cidr_blocks = ["10.5.0.0/24"]
}


*/





/*data "yandex_compute_image" "ubuntu" {
  family = var.vm_family  
}
resource "yandex_compute_instance" "vm_Mysql" {
    platform_id = var.platform_id_vm_Mysql
    name = var.name_vm_Mysql
  
  resources {
    cores         = var.resources_vm_Mysql.vm_cores
    memory        = var.resources_vm_Mysql.vm_memory
    core_fraction = var.resources_vm_Mysql.vm_core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
      size = var.size_vm_Mysql
    }
  }
  scheduling_policy {
    preemptible = var.scheduling_policy
  }
  network_interface {
    subnet_id = var.subnet_ids
    nat       = var.vm_nat
  }

  metadata = {
    serial-port-enable = var.metadata.serial-port-enable
    ssh-keys           = "ubuntu:${local.ssh_key}"
  } 
}
*/