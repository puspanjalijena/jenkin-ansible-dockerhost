FROM registry.access.redhat.com/ubi8/ubi:8.1
MAINTAINER puspa.anjali001@gmail.com
RUN yum install httpd -y
RUN yum install zip -y
RUN yum install unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page1/photoprowess.zip /var/www/html
WORKDIR /var/www/html
RUN unzip photoprowess.zip
RUN cp -rvf photoprowess/* .
RUN rm -rf photoprowess photoprowess.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
