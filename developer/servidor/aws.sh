# crear tu PAR DE LLAVES
aws ec2 create-key-pair --key-name anibal
# copiar todo lo que esta marcado con tag:END RSA PRIVATE KEY incluso este

## cambiar permisos para que se genere tu llave publica apartir de tu
# archivo.pem
chmod 400 anibal.pem

#para mostrar tu huella digital
aws ec2 describe-key-pairs --key-name anibal

### AWS CLI
aws configure

#################
## SAM (Serverless Application Model) (require: node, python, pip, docker)
#################
aws --version
pip install aws-sam-cli
sam --version
# Create project with SAM
sam init --runtime nodejs12.x
cd sam-app
# build the source of your Application & and install all packages
sam build
# test a single function
sam local invoke HelloWorldFunction --event events/event.json
# Emulate API (only restar sam when your change the template.yaml)
sam local start-api # output= http://127.0.0.1:3000/hello

#################
## AWS S3
#################
# Create directory in S3
aws s3 --region sa-east-1 mb s3://learning-lambda-firt-sam-project
# upload package to s3
sam package --template-file template.yaml  --output-template-file pck.yml --s3-bucket learning-lambda-firt-sam-project



[anibal-amazon1@pprios.com]
aws_access_key_id = AKIAVX5SKXUESQXL4PWX
aws_secret_access_key = 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

#################
## AWS DynamodDB
#################
aws dynamodb scan --table-name Music --output text --max-items 2000000
aws dynamodb scan --table-name Music --output text --max-items 2000000 > results.txt
# Nice format for csv
aws dynamodb scan --table-name Music --output text --max-items 2000000 > results.txt \
--query "Items[*].[code.S, Artist.S, SongTitle.S]"
