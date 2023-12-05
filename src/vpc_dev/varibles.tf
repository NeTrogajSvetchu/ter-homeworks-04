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

variable "network_id" {
  
}
variable "env" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}
variable "vpc_subnet_1"{
 type = list(object(
  {
    name = string
    zone = string
    v4_cidr_blocks = list(string)
  }))
  default = [{
    v4_cidr_blocks = ["10.0.1.0/24"]
    zone  = "ru-central1-a"
    name  = "vpc_subnet_1"
  }]
  description = "задание 4"
}
variable "vpc_subnet_2"{
 type = list(object(
  {
    name = string
    zone = string
    v4_cidr_blocks = list(string)
  }))
  default = [{
    v4_cidr_blocks = ["10.0.2.0/24"]
    zone  = "ru-central1-b"
    name  = "vpc_subnet_2"
  }]
  description = "задание 4"
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
  description = "задание 4"
}
/*
variable "name" {
}
variable "zone" {
}
variable "v4_cidr_blocks" {
}
#cidrs = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
    #zone  = ["ru-central1-a","ru-central1-b","ru-central1-c"]


/*
variable "subnets" {
  type = object(
  {
    name = string
    zone = string
    v4_cidr_blocks = list(string)
  }))
  default = [ 
    {
     name = "sub_net_1"
     zone = "ru-central1-a" 
     v4_cidr_blocks = ["10.0.1.0/24"]
    },
    {
     name = "sub_net_2"
     zone = "ru-central1-b" 
     v4_cidr_blocks = ["10.0.2.0/24"]   
    },
   {
     name = "sub_name_3"
     zone = "ru-central1-c" 
     v4_cidr_blocks = ["10.0.3.0/24"] 
    }
]
}

*/

/*

variable "sab_net" {
type = list(object({}))
default = [ {
  zone = ["ru-central1-a","ru-central1-b","ru-central1-c"]
  v4_cidr_blocks = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
}]
}
/*
,
{
 zone = "ru-central1-b" 
 v4_cidr_blocks = "10.0.2.0/24"
},
{
zone = "ru-central1-c" 
v4_cidr_blocks = "10.0.3.0/24"  
} ]
*/
/*default = [ {
  zones = ["ru-central1-a", "ru-central1-b", "ru-central1-c"]
  v4_cidr_blocks = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
} 
variable "zone" {
  type = list(string)
  default = ["ru-central1-a", "ru-central1-b", "ru-central1-c"]
  description   = "ter-homeworks-04 Задание 4*"
  }

variable "cidr" {
  type = list(string)
  default = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
  description   = "ter-homeworks-04 Задание 4*"
}
*/
/*variable "zone" {
  type          = string
  default       = "ru-central1-a"
  description   = "ter-homeworks-04 Задание 4*"
}
variable "zones" {
  type          = any
  default       = (["ru-central1-a", "ru-central1-b", "ru-central1-c"])
  description   = "ter-homeworks-04 Задание 4*"
}
*/
/*
variable "count_yandex_vpc_subnet_develop" {
  type = number
  default = 1
  description = "ter-homeworks-04 Задание 4*"
}

  variable "default_cidr" {
  type        = string
  default     = "10.0.${1+count.index}.0/24"
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}
*/