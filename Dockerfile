FROM centos:centos7
MAINTAINER Jean-Michael Cyr <cyrjeanmichael@gmail.com

# Install Utilities and Base Apps 
RUN yum -y update && yum -y install httpd wget gcc gcc-c++ make nano locate git && yum -y clean all

CMD ["/usr/sbin/httpd", "-D", " FOREGROUND"]

# Documentation and References
# http://yomotherboard.com/how-to-install-upgrade-to-php-5-6-on-centos-rhel/
# http://devdocs.magento.com/guides/v2.0/install-gde/prereq/php-centos.html
# https://github.com/dockerfile/nodejs/blob/master/
# http://serverfault.com/questions/31393/installing-make-with-wget
# https://nodejs.org/download/release/
# http://dev.antoinesolutions.com/apache-server
# https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-a-centos-7-server