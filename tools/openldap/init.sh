#!/bin/bash

service slapd start
source /etc/apache2/envvars
exec apache2 -D FOREGROUND