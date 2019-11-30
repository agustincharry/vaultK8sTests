storage "file" {
  path = "/vault-data"
}

listener "tcp" {
  address = "0.0.0.0:8200"
  tls_disable = 1
}

ui = "true"

// Necesario para Openshift -> Aunque no recomendado para produccion
disable_mlock = true

cluster_name = "vault-prod"