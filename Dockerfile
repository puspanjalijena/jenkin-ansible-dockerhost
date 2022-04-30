FROM registry.access.redhat.com/ubi8/ubi:8.1
MAINTAINER puspa.anjali001@gmail.com
RUN yum install -y httpd
ADD https://offers.hubspot.com/html-and-css-for-marketers?hubs_post-cta=author&_ga=2.183362726.1068302062.1651324160-215492087.1651324160 /var/www/html/
WORKDIR /var/www/html
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
