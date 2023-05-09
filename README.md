# README

# DatAnnouncement

[![DatAnnouncement](https://raw.githubusercontent.com/GedersonG/socket-extension/main/img/Adjust-logo.png)]()

## Table of contents 
1. [General Information](#1--general-information)
2. [Architecture](#2--architecture)
3. [Tecnologies](#3--tecnologies)
4. [Instalation](#4-%EF%B8%8F-instalation)
5. [License](#5--license)
6. [Authors](#6-%EF%B8%8F-authors)
7. [Academic Institution](#6--academic-institution)
8. [Documentation](#8--documentation)

## 1. 🤔 General Information

## 2. 💻 Architecture
  

## 3. 🔗 Tecnologies


| Tecnologies                                                                        | Use                                                                            |
|-------------------------------------------------------------------------------|----------------------------------------------------------------------------------------|
| [![Azure DevOps](https://img.shields.io/badge/Azure_Devops-blue)](https://azure.microsoft.com/es-es/products/devops)             |  |
| [![JavaScript](https://img.shields.io/badge/JavaScript-yellow)](https://www.javascript.com/)                                     |  |
| [![Marketplace Visual Studio Code](https://img.shields.io/badge/Marketplace_Visual_Studio_Code-red)](https://marketplace.visualstudio.com/vscode) | 

## 4. ⚡️ Instalación

## Run in Docker
### Linux

* Run dockers
sudo docker-compose up -d --build

* Check status (view ID docker)
sudo docker container ps

* Exec rake for init DB
sudo docker exec -it ID rake db:migrate                          
sudo docker exec -it ID rake db:fixtures:load

### Windows

* Run dockers
docker-compose up -d --build

* Check status (view ID docker)
docker container ps

* Exec rake for init DB
docker exec -it <ID> rake db:migrate                          
docker exec -it <ID> rake db:fixtures:load

### Hot to run

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

## 5. 📫 License

![Licencia](https://img.shields.io/badge/Licencia-MTI-blue)

**Free Software !!! :D**

## 6. 👯‍♀️ Authors

- [@Gederson Gustavo](https://github.com/GedersonG)

- [@Camilo Ramirez](https://www.github.com/CamiloRamirezP)

- [@Daniela Sanchez](https://www.github.com/DanielaSanchezb)

- [@Jeison Ferrer](https://www.github.com/joferrer)

- [@Jhonny Guarin](https://www.github.com/JhonnyGCH)

  
## 7. 🏛 Academic Institution

  
## 8. 👩‍💻 Documentation

[![Documentation](https://img.shields.io/badge/Documentaci%C3%B3n-blueviolet)]()

  
  
  
  
  
