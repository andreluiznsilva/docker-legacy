#!/bin/bash

cd /

pwd

service apache2 start

service slapd start

./etc/init.d/apache2 start

/usr/sbin/slapd -u openldap -g openldap -d 0