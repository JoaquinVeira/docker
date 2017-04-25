FROM library/debian:wheezy
MAINTAINER joaquin.veira@gmail.com
RUN apt-get update && apt-get -y --no-install-recommends install libapache2-mod-php5 php5-mysql php5-gd php5-curl && rm -rf /var/cache/apt /var/lib/apt /var/lib/dpkg && a2enmod rewrite headers && sed -i -e 's:${APACHE_LOG_DIR}/access.log:/dev/stdout:' -e 's:${APACHE_LOG_DIR}/error.log:/dev/stderr:' /etc/apache2/sites-available/*
EXPOSE 80
ENTRYPOINT [ "/usr/sbin/apache2ctl", "-D", "FOREGROUND" ]
