resource "yandex_mdb_mysql_cluster" "managed" {
    host {
    zone      = var.zone_2
    subnet_id = var.subnet_ids_2
  }
}