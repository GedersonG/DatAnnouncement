# README

# README

* Run dockers
sudo docker-compose up -d --build

* Check status (view ID docker)
sudo docker container ps

* Remember init DB commands
more Procfile

* Exec rake for init DB
sudo docker exec -it ID rake db:migrate                          
sudo docker exec -it ID rake db:fixtures:load

