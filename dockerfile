ARG NAME=latest
FROM centos:$NAME
ARG NAME
MAINTAINER $NAME
LABEL Name=$NAME
LABEL Email="ayush@gmail.com"
ENV NAME $NAME
RUN yum update-y update && yum install httpd -y
RUN systemctl start httpd
CMD apachectl -D FOREGROUND
