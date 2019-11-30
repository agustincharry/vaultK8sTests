storage "file" {
  path = "/vault-data"
}

listener "tcp" {
  address = "0.0.0.0:8200"
  tls_min_version = "tls12"
  #https://www.selfsignedcertificate.com/
  #openssl req -x509 -newkey rsa:4096 -keyout vault-key.pem -out vault-crt.pem -days 365 -nodes -subj "/C=CO/ST=Medellin/L=Medellin/O=BCO/OU=BCO/CN=192.168.99.100"
  tls_cert_file = "/vault/config/cert/vault.crt"
  tls_key_file = "/vault/config/cert/vault.key"
}

ui = "true"

// Necesario para Openshift -> Aunque no recomendado para produccion
disable_mlock = true

cluster_name = "vault-prod"