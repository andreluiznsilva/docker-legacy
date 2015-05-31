# Oracle 11g Image

FROM wnameless/oracle-xe-11g

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

ENV ORACLE_SYSTEM_PASSWORD system*123
ENV ORACLE_DATABASE default
ENV ORACLE_USER oracle
ENV ORACLE_PASSWORD oracle*123

ADD init.sh /init.sh

RUN bash init.sh