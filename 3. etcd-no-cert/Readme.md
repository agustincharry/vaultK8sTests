# Vault
## Almacenamiento: etcd
###### Se requiere un volumen a la ruta /etcd/vault
###### Se configura en vault mediante variables de entorno
## Certificados digitales: No
## Notas
###### El atributo "disable_mlock" debe ser configurado en Openshift debido a que el contenedor no se ejecuta como root.