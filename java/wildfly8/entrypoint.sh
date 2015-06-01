#!/bin/bash
set -e

if [ "$RESOURCES" ]; then
	sed -i "s#.*<Context>.*#\t<Context>\n$RESOURCES#g" $JBOSS_HOME/conf/context.xml
fi

if [ "$LIBS" ]; then
	wget -P $JBOSS_HOME/standalone/lib $LIBS
fi

exec "$@"