#!/bin/bash
set -e

if [ "$PROXY" ]; then
		echo -e "<IfModule mod_proxy.c><Proxy *>AddDefaultCharset off\nOrder deny,allow\nAllow from all\n</Proxy>\nProxyRequests On\nProxyRequests On\nProxyPass $PROXY\n</IfModule>" > etc/apache2/mods-enabled/proxy.conf
fi

exec "$@"