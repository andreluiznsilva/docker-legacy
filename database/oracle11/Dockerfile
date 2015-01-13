# Oracle Image

FROM wnameless/oracle-xe-11g

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

RUN sqlplus -S system/oracle@localhost << alter user system identified by system;create user admin identified by admin;grant all privileges to admin;create user dbuser identified by dbuser;grant all privileges to dbuser;exit;

EXPOSE 1521