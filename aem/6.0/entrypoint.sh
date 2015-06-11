#!/bin/bash
set -e

echo "license.product.name=$AEM_LICENSE_PRODUCT_NAME" >> license.properties
echo "license.customer.name=$AEM_LICENSE_CUSTOMER_NAME" >> license.properties
echo "license.product.version=$AEM_LICENSE_PRODUCT_VERSION" >> license.properties
echo "license.downloadID=$AEM_LICENSE_DOWNLOADID" >> license.properties

export JAR_NAME="cq-publish-p4503.jar"

if [ "$AEM_MODE" == "author" ]; then
	export JAR_NAME="cq-author-p4502.jar"
fi

mv AEM_6.0_Quickstart.jar "$JAR_NAME"

echo "$JAR_NAME"

java -jar "$JAR_NAME" -unpack -r nosamplecontent

exec "$@"