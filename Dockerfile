FROM ubuntu
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update 
RUN apt-get -y upgrade
RUN apt-get install -y apache2
RUN apt-get install -y mysql-server
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_ROOT_USER=root
RUN apt-get install -y php
