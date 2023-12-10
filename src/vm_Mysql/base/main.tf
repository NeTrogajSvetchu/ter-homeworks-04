resource "yandex_mdb_mysql_database" "managed" {
  cluster_id = var.cluster_id
  name       = var.name
}
