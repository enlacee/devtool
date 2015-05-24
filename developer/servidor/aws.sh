# crear tu PAR DE LLAVES
aws ec2 create-key-pair --key-name anibal
# copiar todo lo que esta marcado con tag:END RSA PRIVATE KEY incluso este

## cambiar permisos para que se genere tu llave publica apartir de tu
# archivo.pem
chmod 400 anibal.pem

#para mostrar tu huella digital
aws ec2 describe-key-pairs --key-name anibal
