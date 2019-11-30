storage "etcd" {
}

listener "tcp" {
  address = "0.0.0.0:8200"
  tls_min_version = "tls12"
  #https://www.selfsignedcertificate.com/
  tls_cert_file = "/vault/config/cert/vault.crt"
  tls_key_file = "/vault/config/cert/vault.key"
}

ui = "true"
disable_mlock = true