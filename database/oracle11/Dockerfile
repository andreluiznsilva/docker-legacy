# Oracle Image

FROM wnameless/oracle-xe-11g

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

ADD init.sql /init.sql

RUN service oracle-xe start &&  sqlplus -S system/oracle @init.sql