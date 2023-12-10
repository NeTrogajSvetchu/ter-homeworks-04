###cloud vars
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
/*
variable "subnet_id" {
}*/
variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
/*
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}
*/
variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}

variable "name_vm_Mysql" {
  type = string
  default = "vm_Mysql"
}
variable "name_vm_Mysql_2" {
  type = string
  default = "vm_Mysql2"
}
 variable "user_bd_password" {  
 }
/*
variable "source_vm_Mysql" {
  default = "./vm_Mysql"
}
variable "source_vpc_subnet_1" {
  default = "./vpc_dev"
}
variable "source_vm_Mysql_base" {
  default = "./vm_Mysql/base"
}
variable "source_vm_Mysql_name" {
  default = "./vm_Mysql/user"
}
variable "source_test-vm" {
  default = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
}
*/
variable "image_family_test-vm" {
  default = "ubuntu-2004-lts"
}
variable "public_ip_test-vm" {
  default = true
}
variable "instance_count" {
  type = number
  default = 1
}
variable "metadata_serial-port-enable" {
  type = number
  default = 1
}

/*
variable "vpc_subnet_2"{
 type = list(object(
  {
    name = list(string)
    zone = list(string)
    v4_cidr_blocks = list(string)
  }))
  default = [{
    v4_cidr_blocks = ["10.0.2.0/24","10.0.3.0/24"]
    zone  = ["ru-central1-b", "ru-central1-c"]
    name  = ["vpc_subnet_2","vpc_subnet_3"]
  }]
  /*
}
variable "vpc_subnet_3"{
 type = list(object(
  {
    name = string
    zone = string
    v4_cidr_blocks = list(string)
  }))
  default = [{
    v4_cidr_blocks = ["10.0.3.0/24"]
    zone  = "ru-central1-c"
    name  = "vpc_subnet_3"
  }]
  
}
/*
###common vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "your_ssh_ed25519_key"
  description = "ssh-keygen -t ed25519"
}

###example vm_web var
variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "example vm_web_ prefix"
}

###example vm_db var
variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "example vm_db_ prefix"
}
*/