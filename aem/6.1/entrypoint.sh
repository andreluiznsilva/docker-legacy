#!/bin/bash
set -e

echo "license.product.name=$AEM_LICENSE_PRODUCT_NAME" >> license.properties
echo "license.customer.name=$AEM_LICENSE_CUSTOMER_NAME" >> license.properties
echo "license.product.version=$AEM_LICENSE_PRODUCT_VERSION" >> license.properties
echo "license.downloadID=$AEM_LICENSE_DOWNLOADID" >> license.properties

export AEM_PORT='4502';

if [ "$AEM_MODE" == "publish" ]; then
	export AEM_PORT='4503';
fi

java -jar cq-quickstart-beta-6.1.0.jar -r$AEM_MODE -p$AEM_PORT -nobrowser