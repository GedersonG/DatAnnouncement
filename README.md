# README

# Run in Docker
## Linux

* Run dockers
sudo docker-compose up -d --build

* Check status (view ID docker)
sudo docker container ps

* Exec rake for init DB
sudo docker exec -it ID rake db:migrate                          
sudo docker exec -it ID rake db:fixtures:load

## Windows

* Run dockers
docker-compose up -d --build

* Check status (view ID docker)
docker container ps

* Exec rake for init DB
docker exec -it <ID> rake db:migrate                          
docker exec -it <ID> rake db:fixtures:load

## Hot to run

(Translate) Para ejecutar la aplicacion se requiere tener instalado previamente

* Ruby --> 3.1.4 (https://rubyinstaller.org/downloads/  --> Para windows)
* PostgreSQL --> (>14)

Para ejecutar el proyecto en una terminal:

* blundle install -> Windows (Instala gestor de paqueter Blundle)

* Bundle (Instala las gemas del Gemfile)

* rails db:migrate (Crea las tablas y relaciones DB)

* rails db:fixtures:load (Carga las fixtures de testing)

* Rails server (Run project)

Ruta: config/database.yml --> Desarrollo y test debe tener las credenciales postgres instaladas
