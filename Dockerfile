FROM centos:centos7
MAINTAINER Jean-Michael Cyr <cyrjeanmichael@gmail.com>

# Install Utilities and Base Apps
RUN yum -y update && yum -y install wget httpd gcc gcc-c++ make nano locate git && yum -y clean all
#RUN yum -y install httpd --skip-broken

EXPOSE 80

ADD etc/httpd/conf/httpd.conf /etc/httpd/conf/httpd.conf
RUN mkdir -p /var/www/html
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]