#!/bin/bash
set -e

if [ "$RESOURCES" ]; then
	sed -i "s#.*<Context>.*#\t<Context>\n$RESOURCES#g" $CATALINA_HOME/conf/context.xml
fi

if [ "$LIBS" ]; then
	wget -P $CATALINA_HOME/lib $LIBS
fi

exec "$@"