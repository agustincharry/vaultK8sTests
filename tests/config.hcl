/*
storage "file" {
  path = "/var/lib/vault"
}

ha_storage "mysql" {
  ha_enabled = "true"
  username = "AnLjpBo6Uo"
  password = "79EzfT9gqe"
  database = "AnLjpBo6Uo"
  address = "remotemysql.com:3306"
}

storage "mysql" {
  ha_enabled = "true"
  username = "gj3GKqufSj"
  password = "11tFCOmAvU"
  database = "gj3GKqufSj"
  address = "remotemysql.com:3306"
}
*/

//storage "inmem" {}

storage "file" {
  path = "/vault-data"
}

#https://www.selfsignedcertificate.com/
#openssl req -x509 -newkey rsa:4096 -keyout vault-key.pem -out vault-crt.pem -days 365 -nodes -subj "/C=CO/ST=Medellin/L=Medellin/O=BCO/OU=BCO/CN=192.168.99.100"
listener "tcp" {
  address = "0.0.0.0:8200"
  #cluster_address = "0.0.0.0:8201"
  tls_disable = 1
  #tls_min_version = "tls12"
  #tls_cert_file = "/vault/config/cert/vault.crt"
  #tls_key_file = "/vault/config/cert/vault.key"
  #tls_prefer_server_cipher_suites = "true"
}

ui = "true"
disable_mlock = true
cluster_name = "vault-prod"
# One week
#default_lease_ttl = "192h" 
#max_lease_ttl = "192h"
