#!/bin/bash
set -e

if [ "$RESOURCES" ]; then
	sed -i "s#.*<GlobalNamingResources>.*#\t<GlobalNamingResources>\n$RESOURCES#g" $CATALINA_HOME/conf/server.xml
fi

if [ "$LIBS" ]; then
	wget -P $CATALINA_HOME/lib $LIBS
fi

exec "$@"