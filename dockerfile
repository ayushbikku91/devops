version: '3'
services:
  webapache:
    build:
     context: .
     dockerfile: dockerfile
     args:
      - NAME=Rajesh
    image: ayushbikku91/ubuntu.apache:1
    ports:
      - "8000:80"
    networks:
      - webapache
    volumes:
      - /tmp:/var/www/html
networks:
 webapache:
