#!/bin/bash
set -e

if [ "$PROXY" ]; then
		echo -e "<IfModule mod_proxy.c>\nProxyPass $PROXY\n</IfModule>" > etc/apache2/mods-enabled/proxy.conf
fi

exec "$@"