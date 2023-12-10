variable "cluster_id" {
}

variable "password" {
    type = string
}
variable "name" {
  type = string
  default = "app"
}

variable "connection_limits" {
  type = map(number)
  default = {
    max_questions_per_hour      = 10
    max_updates_per_hour        = 20
    max_connections_per_hour    = 30
    max_user_connections        = 40
  }
}