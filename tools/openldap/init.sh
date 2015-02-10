#!/bin/bash

cd /

./etc/init.d/apache2 start

/usr/sbin/slapd -u openldap -g openldap -d 0