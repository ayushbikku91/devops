ARG NAME=latest
FROM ubuntu:$NAME
ENV NAME omkar
MAINTAINER $NAME
LABEL Name=$NAME
LABEL Email="ayush@gmail.com"
RUN echo "Ram Ram" > /var/www/html/
RUN apt-get update && apt-get -y install apache2
CMD apachectl -D FOREGROUND
