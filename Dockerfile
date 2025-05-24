FROM ubuntu

#timezone
ENV DEBIAN-FRONTEND=noniteractive

RUN apt update
RUN apt install apache2 -y

RUN date > /var/www/html/buildtime.txt

COPY html/ /var/www/html/

EXPOSE 81/tcp

CMD service apache2 start && bash
