#!/bin/bash
set -e

if [ "$RESOURCES" ]; then
	sed -i "s#.*<GlobalNamingResources>.*#\t$RESOURCES#g" /usr/local/tomcat/conf/server.xml
fi

exec "$@"