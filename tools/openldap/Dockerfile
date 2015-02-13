# Base image Openldap

FROM cnry/openldap

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

ENV SLAPD_PASSWORD admin

ADD init.sh /init.sh

RUN apt-get update && \
	apt-get install -y phpldapadmin && \
	sed -i s/'dc=example,dc=com'/'${SLAPD_DOMAIN}'/g /etc/phpldapadmin/config.php
	
EXPOSE 80 389

CMD ./etc/init.d/apache2 start && \
	bash init.sh