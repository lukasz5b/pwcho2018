FROM ubuntu:latest
LABEL maintainer="Lukasz Siepsiak"
RUN apt-get update
RUN apt-get install apache2 -y
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG/DIR /var/log/apache2

EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-k", "start", "-D", "FOREGROUND"]
