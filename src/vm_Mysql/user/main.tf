resource "yandex_mdb_mysql_user" "managed" {
	cluster_id = var.cluster_id
    name       = var.name
    password   = var.password
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
	  max_questions_per_hour   = var.connection_limits.max_questions_per_hour
	  max_updates_per_hour     = var.connection_limits.max_updates_per_hour
	  max_connections_per_hour = var.connection_limits.max_connections_per_hour
	  max_user_connections     = var.connection_limits.max_user_connections
	}
    
	global_permissions = ["PROCESS"]

	authentication_plugin = "SHA256_PASSWORD"
}