# Vault
## Almacenamiento: File
###### Se requiere un volumen a la ruta /vault-data
## Certificados digitales: Si
###### Autofirmados.
###### Es necesario que al crear la ruta de acceso al servicio en Openshift se active la casilla de "Secure route", en donde se configure el campo "TLS Termination" como "Passthroogh", y el campo "Insecure Traffic" como "None"
## Notas
###### El atributo "disable_mlock" debe ser configurado en Openshift debido a que el contenedor no se ejecuta como root.