#!/bin/bash
set -e

# mapping host ip
DOCKERHOST_IP=$(netstat -nr | grep '^0\.0\.0\.0' | awk '{print $2}')
echo "$DOCKERHOST_IP dockerhost" >> /etc/hosts

if [ "$APACHE_MOD_PROXY" ]; then
	echo -e "$APACHE_MOD_PROXY" > /etc/apache2/mods-enabled/proxy.conf
fi

exec "$@"
