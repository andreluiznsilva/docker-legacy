#!/bin/bash
set -e

env JAVA_OPTS="$JAVA_OPTS"

echo "<?xml version=\"1.0\" encoding=\"utf-8\"?><tomcat-users><role rolename=\"manager-gui\"/><user username=\"$TOMCAT_USER\" password=\"$TOMCAT_PASSWORD\" roles=\"manager-gui\"/></tomcat-users>" > conf/tomcat-users.xml

sed -i "s#.*</Service>.*#\t<Connector port=\"8443\" protocol=\"org.apache.coyote.http11.Http11Protocol\" maxThreads=\"150\" SSLEnabled=\"true\"	scheme=\"https\" secure=\"true\" clientAuth=\"false\" sslProtocol=\"TLS\" /></Service>#g" $CATALINA_HOME/conf/server.xml

if [ "$TOMCAT_RESOURCES" ]; then
	sed -i "s#.*<Context>.*#\t<Context>\n$TOMCAT_RESOURCES#g" $CATALINA_HOME/conf/context.xml
fi

if [ "$TOMCAT_LIBS" ]; then
	IFS=' ' read -r -a libs_url_array <<< "$TOMCAT_LIBS"
	for lib_url in "${libs_url_array[@]}"
	do
	    if [ -e $CATALINA_HOME/lib/`basename $lib_url` ]
		then
			echo "$lib_url was already downloaded."
		else
			wget -P $CATALINA_HOME/lib $lib_url
		fi
	done
fi

exec "$@"
