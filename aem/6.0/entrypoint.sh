#!/bin/bash
set -e

env JAVA_OPTS="$JAVA_OPTS"

echo "license.product.name=$AEM_LICENSE_PRODUCT_NAME" >> license.properties
echo "license.customer.name=$AEM_LICENSE_CUSTOMER_NAME" >> license.properties
echo "license.product.version=$AEM_LICENSE_PRODUCT_VERSION" >> license.properties
echo "license.downloadID=$AEM_LICENSE_DOWNLOADID" >> license.properties

env JAR_NAME="cq-publish-4503"

if [ "$AEM_MODE" == "author" ]; then
	env JAR_NAME="cq-author-4502"
fi

mv AEM_6.0_Quickstart.jar $JAR_NAME.jar

java -jar $JAR_NAME.jar -unpack -r nosamplecontent

exec "$@"