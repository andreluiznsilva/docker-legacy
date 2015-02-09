#!/bin/bash

./etc/init.d/slapd start
source /etc/apache2/envvars
exec apache2 -D FOREGROUND