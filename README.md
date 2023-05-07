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
docker exec -it ID rake db:migrate                          
docker exec -it ID rake db:fixtures:load

