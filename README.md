# DatAnnouncement

[![DatAnnouncement](https://raw.githubusercontent.com/JhonnyGCH/img/9b09e6adb1a6e47da9bd8c1891d44761b7770104/DatAnnouncement.png)]()

## Table of contents 
1. 🤔 [General Information](#1--general-information)
2. 💻 [Architecture](#2--architecture)
3. 🔗 [Tecnologies](#3--tecnologies)
4. ⚡ [Instalation](#4-%EF%B8%8F-instalation)
5. 📫 [License](#5--license)
6. 👯‍ [Authors](#6-%EF%B8%8F-authors)
7. 🏛 [Academic Institution](#7--academic-institution)
8. 👩‍💻 [Documentation](#8--documentation)

## 1. 🤔 General Information

### ![Web aplication](https://img.shields.io/badge/Web_Aplication-ff69b4)

DatAnnouncement is a web application that offers a wide variety of products to its users. The application allows you to visualize any type of item with its detailed information such as name, price and description, and also allows you to organize them by categories.

We offer our customers the opportunity to offer products in a fast and secure way. DatAnnouncement provides a space to offer products online, with an easy to use interface, with features that make the online experience easy and convenient for users.

#### ![Add to Favorites](https://img.shields.io/badge/Add_to_Favorites-yellow)
If you find yourself interested in a product, but are not sure whether to purchase it at that time, you can add it to your "Favorites". When you click on the ⭐ on the product page, it will be saved in a list of products that you can access from your account at any time. This allows you to keep track of the products you are interested in and view them later without having to search for them again.

#### ![Filtering](https://img.shields.io/badge/Filtering-9cf)
At DatAnnouncement, we offer filtering options so you can find the products you need faster and more efficiently. You can filter search results by price, category, location, and other criteria to narrow results to specific products. In addition, you can also sort results by price, popularity, novelty, and more.

#### ![Add, edit or delete products](https://img.shields.io/badge/Add,_edit_or_delete_products-succes)
As a DatAnnouncement user, you can add new products, edit your existing product information and delete unwanted products from your account. All of this is easy to do by logging into the product and selecting the edit or delete option.

#### ![Add, edit or delete categories](https://img.shields.io/badge/Add,_edit_or_delete_categories-informational)
As an administrator in DatAnnouncement, you can add, edit or delete categories from the configuration section of the web application.

<div align="center">
   <img src="https://devloteq.com/wp-content/uploads/2020/07/tiendas-en-linea.png" width="800" height="350">
</div>


## 2. 💻 Architecture
  
  The system is designed on a monolith architecture where all the components of the system are located on a single block of code. Being built with Ruby on Rails, the application has the characteristics of this technology, this implies that the code structure follows the MVC-I pattern and also appropriates the CoC (Convention on Configuration) concept that allows the programmer not to worry about defining basic conventions and focus on unconventional ones. An example of this is reflected in the model where we have the model "product" and from this Ruby and Rails can interpret that the table of this entity will be called "products".
  
  
  
  <div align="center">
   <img src="https://raw.githubusercontent.com/JhonnyGCH/img/main/arquitectura.png" width="450" height="340">
</div>
  

## 3. 🔗 Tecnologies


| Tecnologies                                                                        | Definition                                                                            |
|-------------------------------------------------------------------------------|----------------------------------------------------------------------------------------|
| [![HTML5](https://img.shields.io/badge/HTML5-orange)](https://developer.mozilla.org/en-US/docs/Web/HTML)             | HTML (HyperText Markup Language) is the most basic building block of the Web. It defines the meaning and structure of web content. Other technologies besides HTML are generally used to describe a web page's appearance/presentation (CSS) or functionality/behavior (JavaScript). |
| [![CSS](https://img.shields.io/badge/CSS-blue)](https://developer.mozilla.org/en-US/docs/Web/CSS)                                     | Cascading Style Sheets (CSS) is a stylesheet language used to describe the presentation of a document written in HTML or XML (including XML dialects such as SVG, MathML or XHTML). CSS describes how elements should be rendered on screen, on paper, in speech, or on other media. |
| [![Ruby on Rails](https://img.shields.io/badge/Ruby_On_Rails-red)](https://rubyonrails.org/) | Rails is a full-stack framework. It ships with all the tools needed to build amazing web apps on both the front and back end.  |
| [![Bootstrap](https://img.shields.io/badge/Bootstrap-purple)](https://getbootstrap.com/) | Bootstrap is the most popular CSS Framework for developing responsive and mobile-first websites. Bootstrap 5 is the newest version of Bootstrap |
| [![Dockers](https://img.shields.io/badge/Dockers-blue)](https://www.docker.com/products/docker-desktop/) | Docker is an open platform for developing, shipping, and running applications. Docker enables you to separate your applications from your infrastructure so you can deliver software quickly. With Docker, you can manage your infrastructure in the same ways you manage your applications. By taking advantage of Docker’s methodologies for shipping, testing, and deploying code quickly, you can significantly reduce the delay between writing code and running it in production. | [![Ruby](https://img.shields.io/badge/Ruby-green)](https://www.ruby-lang.org/es/) | A dynamic, open source programming language focused on simplicity and productivity. Its elegant syntax feels natural to read and easy to write.

## 4. ⚡️ Instalation

![Local](https://img.shields.io/badge/Local-yellow)

* For the local installation of the project by download, you can do it by the following link: Download(https://github.com/GedersonG/DatAnnouncement/archive/refs/heads/main.zip)

* Go to your Downloads folder on your computer
* Unzip the .zip file named DatAnnouncement-main

![GitHub](https://img.shields.io/badge/GitHub-important)
* Perform a Fork. This will allow you to have a copy of the repository in your own account.

* Cloning the project. By cloning the project into your IDE of choice you can edit and modify it to your liking. Or you can make a Local copy of your new repository.


### ![How to run](https://img.shields.io/badge/How_to_run-blueviolet)

To run the application, it is required to have previously installed:

* Ruby  3.1.4 (https://rubyinstaller.org/downloads/ --> For windows)
   
* PostgreSQL >=14 


To run the project on a terminal:

* gem install blunder -> Windows (Install package manager Blundle)

* bundle install (Install the Gemfile gems)

* rake db:create (Create database in development and database in test)

* rake db:migrate (Create tables and relationships DB)

* rake db:fixtures:load (Load testing fixtures)

* Rails server (Run project)

Ruta: config/database.yml --> Development and test must have the postgres credentials installed.

You must make sure that the credentials match your credentials configured in your PosgreSQL in **database.yml**.

```sh
# the same name as the operating system user running Rails.
  username: postgres

  # The password associated with the postgres role (username).
  password: password
  # password: root
```



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
Project developed in the subject Software Architecture of the [Systems Engineering Program] of the [Universidad Francisco de Paula Santander]

   [Systems Engineering Program]:<https://ingsistemas.cloud.ufps.edu.co/>
   [Universidad Francisco de Paula Santander]:<https://ww2.ufps.edu.co/>
 
 <div align="center">
   <img src="https://ingsistemas.cloud.ufps.edu.co/rsc/img/logo_vertical_ingsistemas_ht180.png" width="400" height="130">
</div>

  
## 8. 👩‍💻 Documentation

[![Documentation](https://img.shields.io/badge/Documentaci%C3%B3n-blueviolet)](https://docs.google.com/document/d/1-ztj2LCm-sJa1J3FEBkTgmoJWWY3vL13iFOdEn__Mnw/edit?usp=sharing)

  
  
  
  
  
