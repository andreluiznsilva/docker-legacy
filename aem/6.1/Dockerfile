# AEM 6.1

FROM java:openjdk-7

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

ENV JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -Xmx1024m, -XX:MaxPermSize=256m

ENV AEM_MODE="publish"

ENV AEM_LICENSE_PRODUCT_NAME="ADOBE EXPERIENCE MANAGER"
ENV AEM_LICENSE_PRODUCT_VERSION="6_0_0_20140509"
ENV AEM_LICENSE_CUSTOMER_NAME=""
ENV AEM_LICENSE_DOWNLOADID=""

WORKDIR /opt/aem

COPY cq-quickstart-beta-6.1.0.jar cq-quickstart-beta-6.1.0.jar

EXPOSE 4502 4503

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]