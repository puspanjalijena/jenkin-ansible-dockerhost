FROM registry.access.redhat.com/ubi8/ubi:8.1
MAINTAINER puspa.anjali001@gmail.com
RUN yum install -y httpd
ADD https://www.w3schools.com/images/w3schools_logo_436_2.png /var/www/html/
WORKDIR /var/www/html
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
