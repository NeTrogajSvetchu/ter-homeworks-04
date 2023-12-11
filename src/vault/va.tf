provider "vault" {
 address = "http://0.0.0.0:8200"
 skip_tls_verify = true
 token = "education"
}
data "vault_generic_secret" "vault_example"{
 path = "secret/example"
}


resource  "vault_generic_secret" "vault_example" {
   
    path      = "secret/example"
    data_json = <<EOT
{
  "example": "test"
  
}
EOT
lifecycle {
  ignore_changes =all
}
}

resource  "vault_generic_secret" "vault_example_2" {
   
    path      = "secret/example"
    data_json = <<EOT
{
  
  "example_2": "test",
  "example_3": "test"
}
EOT
lifecycle {
  ignore_changes =all
}
}

output "vault_example" {
 value = "${nonsensitive(data.vault_generic_secret.vault_example.data)}"
 
}
