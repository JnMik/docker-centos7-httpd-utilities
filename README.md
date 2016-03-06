# CentOS7 image with httpd and some other utilities

This image is also extended by jnmik/docker-centos7-httpd-utilities-php5.6

You can use it in your project with this Dockerfile exemple:

    FROM jnmik/docker-centos7-httpd-utilities-php5.6:latest
    ADD . /var/www/html
    WORKDIR /var/www/html


# Useful Documentation and References

    http://yomotherboard.com/how-to-install-upgrade-to-php-5-6-on-centos-rhel/
    http://devdocs.magento.com/guides/v2.0/install-gde/prereq/php-centos.html
    https://github.com/dockerfile/nodejs/blob/master/
    http://serverfault.com/questions/31393/installing-make-with-wget
    https://nodejs.org/download/release/
    http://dev.antoinesolutions.com/apache-server
    https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-a-centos-7-server

# If you have problem building the image
There is an issue with docker at the moment, it is currently not capable of building
httpd on centos7. Forum seems to report an AUFS problem.
I found a workaround of this thread : https://github.com/docker/docker/issues/6980
The workaround should allow you to build, you must add this line in /etc/default/docker on your machine.

    DOCKER_OPTS="-s devicemapper"