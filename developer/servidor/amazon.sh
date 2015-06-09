# install AWS CLI
sudo apt-get install aws
sudo apt-get install ec2-api-tools
# otra opcion es : pip

# manegar CLI
# paso 1 - crear credenciales
# paso 2 - settings
export AWS_ACCESS_KEY=your-aws-access-key-id
export AWS_SECRET_KEY=your-aws-secret-key
## update ~*/.bashrc
source ~/.bashrc
## test if you CLI is correctly
ec2-describe-regions
