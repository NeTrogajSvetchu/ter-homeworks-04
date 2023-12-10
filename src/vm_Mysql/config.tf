/*data template_file "cloud-init" {
  template = file("${path.module}/cloud-init.yml")

  vars = {
    ssh_public_key = local.ssh_key
    }
  
}*/