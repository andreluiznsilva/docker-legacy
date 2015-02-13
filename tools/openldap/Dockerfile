# Base image Openldap

FROM cnry/openldap

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

RUN apt-get update && \
  	apt-get -y install slapd ldap-utils ldapscripts phpldapadmin && \
	rm -rf /var/lib/apt/lists/*
	
EXPOSE 80 389

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ./etc/init.d/apache2 start && \
	slapd -h "ldap:/// ldapi:///" -u openldap -g openldap -F /etc/ldap/slapd.d -d 0