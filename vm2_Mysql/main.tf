resource "yandex_mdb_mysql_user" "managed" {
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
*/
	connection_limits {
	  max_questions_per_hour   = 10
	  max_updates_per_hour     = 20
	  max_connections_per_hour = 30
	  max_user_connections     = 40
	}
    
	global_permissions = ["PROCESS"]

	authentication_plugin = "SHA256_PASSWORD"
}
resource "yandex_mdb_mysql_cluster" "managed" {
  name        = var.name_vm_Mysql
  environment = "PRESTABLE"
  network_id  = var.network_id
  version     = "8.0"

  resources {
    resource_preset_id = "s2.micro"
    disk_type_id       = "network-ssd"
    disk_size          = 16
  }

  mysql_config = {
    sql_mode                      = "ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION"
    max_connections               = 100
    default_authentication_plugin = "MYSQL_NATIVE_PASSWORD"
    innodb_print_all_deadlocks    = true

  }

  host {
    zone      = var.zone
    subnet_id = var.subnet_ids
  }
}
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