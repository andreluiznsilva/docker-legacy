# Oracle Image

FROM wnameless/oracle-xe-11g

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

ENV ORACLE_USER dbuser
ENV ORACLE_PASSWORD dbuser

RUN env ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe
RUN env PATH=$ORACLE_HOME/bin:$PATH
RUN env ORACLE_SID=XE

RUN echo "alter user system identified by system; \
	create user admin identified by admin; \
	grant all privileges to admin; \
	create user ${ORACLE_USER} identified by ${ORACLE_PASSWORD}; \
	grant all privileges to ${ORACLE_USER}; \
	exit;" >> init.sql
RUN sqlplus -S system/oracle@localhost @init.sql

EXPOSE 1521