FROM --platform=linux/amd64 mysql:8.0-debian 
RUN mkdir /var/log/mysql && touch /var/log/mysql/mysql-slow.log
RUN chown mysql:mysql /var/log/mysql/mysql-slow.log
RUN apt-get update && apt-get upgrade -y
RUN apt-get install vim -y
