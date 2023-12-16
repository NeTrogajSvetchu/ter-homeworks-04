
  locals {
    id = yandex_vpc_network.develop.id
  }
  
  locals {
    access_key ="${var.access_key}"
    secret_key ="${var.secret_key}"
  }
  /*

locals {
  
  subnets = [ {

    sub_net_1 = {
     name = "sub_net_1"
     zone = "ru-central1-a" 
     v4_cidr_blocks = ["10.0.1.0/24"]
    }
   sub_net_2 = {
     name = "sub_net_2"
     zone = "ru-central1-b" 
     v4_cidr_blocks = ["10.0.2.0/24"]   
    }
   sub_net_3 = {
     name = "sub_name_3"
     zone = "ru-central1-c" 
     v4_cidr_blocks = ["10.0.3.0/24"] 
    }

}]

  subnets = [
    {
     name = "sub_name_1"
     zone = "ru-central1-a" 
     v4_cidr_blocks = ["10.0.1.0/24"]
    },
    {
     name = "sub_name_2"
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