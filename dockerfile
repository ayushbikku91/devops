ARG NAME=latest
FROM ubuntu:$NAME
ARG NAME
MAINTAINER $NAME
LABEL Name=$NAME
LABEL Email="xyz@gmail.com"
ENV NAME $NAME
RUN apt-get -y update && apt-get -y install apache2 curl
CMD apachectl -D FOREGROUND
