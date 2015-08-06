#!/bin/bash
set -e

env JAVA_OPTS="$JAVA_OPTS"

echo "<?xml version=\"1.0\" encoding=\"utf-8\"?><tomcat-users><role rolename=\"manager-gui\"/><user username=\"$TOMCAT_USER\" password=\"$TOMCAT_PASSWORD\" roles=\"manager-gui\"/></tomcat-users>" > conf/tomcat-users.xml

sed '88d' $CATALINA_HOME/conf/context.xml && sed '90d' $CATALINA_HOME/conf/context.xml

if [ "$TOMCAT_RESOURCES" ]; then
	sed -i "s#.*<Context>.*#\t<Context>\n$TOMCAT_RESOURCES#g" $CATALINA_HOME/conf/context.xml
fi

if [ "$TOMCAT_LIBS" ]; then
	wget -P $CATALINA_HOME/lib $TOMCAT_LIBS
fi

exec "$@"