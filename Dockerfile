FROM library/debian:wheezy
MAINTAINER joaquin.veira@gmail.com
RUN apt-get update && \
    apt-get -y install apache2 php5-mysql && \
    rm -rf /var/lib/apt /var/cache/apt /var/lib/dpkg
EXPOSE 80
ENTRYPOINT [ "/usr/sbin/apache2ctl", "-D", "FOREGROUND" ]
