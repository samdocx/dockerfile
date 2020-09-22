FROM wordpress:latest

MAINTAINER sam
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install apache2
RUN apt-get -y install mysql-server
ENTRYPOINT apachectl -D FOREGROUND
	   mysqld -D FOREGROUND
 
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_ROOT_USER=root
RUN apt-get install -y php
