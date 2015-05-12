#!/bin/bash
set -e

HOST_IP=$(netstat -nr | grep '^0\.0\.0\.0' | awk '{print $2}')
echo "$HOST_IP dockerhost" >> /etc/hosts

if [ "$PROXY" ]; then
		echo -e "SSLProxyEngine On<IfModule mod_proxy.c>\n<Proxy *>\nAddDefaultCharset off\nOrder deny,allow\nAllow from all\n</Proxy>\nProxyRequests On\nProxyRequests On\nProxyPass $PROXY\n</IfModule>" > etc/apache2/mods-enabled/proxy.conf
fi

exec "$@"