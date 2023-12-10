variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "subnet_ids" {
}
variable "subnet_ids_2" {
}
variable "network_id" {
  
}
variable "zone" {
}
variable "zone_2" {
}
/*
variable "vm_family" { 
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Семейство операционки"
}
variable "platform_id_vm_Mysql" {
  type = string
  default     = "standard-v2"
  description = "политика планирования"
}
*/
variable "name_vm_Mysql" {
/*  type = string
  default = "vm_Mysql"
  description = "Имя вм БД"*/
}
/*
variable "resources_vm_Mysql" {
  type = map(string)
  default = {vm_cores="2",vm_memory="1",vm_core_fraction="5"}
  description = "Ресудсы БД"
}
*/
variable "size_vm_Mysql" {
  type = number
  default = 10
}

variable "scheduling_policy" {
  type = bool
  default = true
}

variable "vm_nat" {
  type    = bool
  default = true
}

variable "metadata" {
  type    = map(string)
  default = {serial-port-enable = "1"  }
}

variable "a" {
  type    = bool
  default = true
}

variable "environment_yandex_mdb_mysql_cluster_managed" {
  type    = string
  default = "PRESTABLE"
}

variable "version_yandex_mdb_mysql_cluster_managed" {
  type    = string
  default = "8.0"
}

variable "resources" {
  /*
  type = map(object(
    {
    resource_preset_id = string
    disk_type_id       = string
    disk_size          = number
}

)
)
*/
  default = {
    resource_preset_id = "s2.micro"
    disk_type_id       = "network-hdd"
    disk_size          = 10
  }
}

variable "mysql_config" {
  /*
type = map(object(
    {
    sql_mode                      = string
    max_connections               = number
    default_authentication_plugin = string
    innodb_print_all_deadlocks    = bool
    }
  )
)
*/
  default = {
    sql_mode                      = "ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION"
    max_connections               = 100
    default_authentication_plugin = "MYSQL_NATIVE_PASSWORD"
    innodb_print_all_deadlocks    = true
  }
}