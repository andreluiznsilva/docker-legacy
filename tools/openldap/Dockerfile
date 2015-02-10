# Base image Openldap

FROM andreluiznsilva/base:debian

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

ADD init.sh /init.sh

RUN apt-get update && \
    echo "slapd slapd/no_configuration boolean false" | debconf-set-selections && \
	echo "slapd slapd/internal/generated_adminpw password admin" | debconf-set-selections && \
	echo "slapd slapd/internal/adminpw password admin" | debconf-set-selections && \
	echo "slapd slapd/password2 password admin" | debconf-set-selections && \
	echo "slapd slapd/password1 password admin" | debconf-set-selections && \
	echo "slapd slapd/domain string test.com" | debconf-set-selections && \
	echo "slapd shared/organization string test" | debconf-set-selections && \
	echo "slapd slapd/allow_ldap_v2 boolean true" | debconf-set-selections && \
	echo "slapd slapd/purge_database boolean true" | debconf-set-selections && \
	echo "slapd slapd/move_old_database boolean true" | debconf-set-selections && \
	echo "slapd slapd/dump_database select when needed" | debconf-set-selections && \
	apt-get install -q -y slapd ldap-utils ldapscripts phpldapadmin && \
	dpkg-reconfigure -f noninteractive slapd
	
EXPOSE 80 389

CMD ./etc/init.d/apache2 start && \
	/usr/sbin/slapd -u openldap -g openldap -d 0