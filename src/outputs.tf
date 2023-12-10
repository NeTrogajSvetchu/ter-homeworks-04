output cloud-config {
  value = "\n${data.template_file.cloud-init.rendered}"
}

output "ip" {
  value = [{
    ip   = module.test-vm.network_interface

    name = module.test-vm.labels
  }]
}

output "vpc_subnet_1" {
  value = module.vpc_subnet_1
}

output "user" {
  value = module.name.user
}