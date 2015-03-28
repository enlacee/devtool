##-----------------------------------------------------------------------------
## Ruby 1.9.3
##-----------------------------------------------------------------------------
# Install ruby, gem, manager package too  
sudo apt-get install ruby-full
# or too
sudo aptitude install ruby rubygems
sudo gem install kramdown # reader markdown (gems)

# instalar gemas    
sudo gem install jekyll # for website basic
sudo gem install slite3 # database file

# Ojo en ubuntu installar la libreria SQLITE    
apt-get install libsqlite3-dev    
    
    
# Crear un sitio web con jekyll y github
jekyll build # (create source and destination)

# Comandos Adicionales    
    ruby --version 
    sqlite3 --version
    rails --version

##-----------------------------------------------------------------------------
## Ruby on Rails 4.2.0
##-----------------------------------------------------------------------------
# Crear y desplegar proyecto rails
# Step 1: install ruby on rails
gem install rails
# Step 2: create project nameProject 'my-rails'
rails new my-rails
# Step 3: instalar gemas requeridas
    cd my-rails/
    bundle install
# Step 4: run server IN LOCAL  http://localhost:3000
rails server 
# Step 5 : run server IN CLOUND  http://0.0.0.0:8080    
rails server -b $IP -p $PORT

# Crear el controlador
bin/rails generate controller welcome index

# Rails dispone de un metodo 'resource' esto habilita el estandar REST 'URL'
# agrega esto en tu codigo app/config/routes.rb

    Rails.application.routes.draw do
     
      resources :articles
     
      root 'welcome#index'
    end

# ver la habilitacion 'URL' REST:    
bin/rake routes # http://localhost:3000/articles/new

# Crear un CRUD scafoldin *blog*
bin/rails generate scaffold Post nombre:string titulo:string contenido:text
# Hacer la migracion de base de datos
bin/rake db:migrate RAILS_ENV=development
# or
bin/rake db:migrate


#### desinstalar gemas
sudo gem uninstall mysql2
