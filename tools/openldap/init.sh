#!/bin/bash

./etc/init.d/apache2 start

slapd -h "ldap:/// ldapi:///" -u openldap -g openldap -F /etc/ldap/slapd.d -d 0