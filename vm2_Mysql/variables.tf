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
variable "network_id" {
  
}
variable "zone" {
  
}
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

variable "name_vm_Mysql" {
/*  type = string
  default = "vm_Mysql"
  description = "Имя вм БД"*/
}

variable "resources_vm_Mysql" {
  type = map(string)
  default = {vm_cores="2",vm_memory="1",vm_core_fraction="5"}
  description = "Ресудсы БД"
}

variable "size_vm_Mysql" {
  type = number
  default = 10
}

variable "scheduling_policy" {
  type = bool
  default = true
}

variable "vm_nat" {
  type = bool
  default = true
}

variable "metadata" {
   type = map(string)
  default = {serial-port-enable = "1"  }
}
