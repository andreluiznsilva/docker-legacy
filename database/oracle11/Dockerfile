# Oracle Image

FROM wnameless/oracle-xe-11g

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

RUN echo "alter user system identified by system; \
	create user admin identified by admin; \
	grant all privileges to admin; \
	create user dbuser identified by dbuser; \
	grant all privileges to dbuser; \
	exit;" >> init.sql
RUN sqlplus -S system/oracle@localhost @init.sql

EXPOSE 1521