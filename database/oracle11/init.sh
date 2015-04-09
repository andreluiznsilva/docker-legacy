#!/bin/bash

service oracle-xe start

export ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe
export PATH=$ORACLE_HOME/bin:$PATH
export ORACLE_SID=XE

sqlplus -S system/oracle << EOF
alter user system identified by ${ORACLE_SYSTEM_PASSWORD};
create user admin identified by ${ORACLE_SYSTEM_PASSWORD}; 
grant all privileges to admin;
create user ${ORACLE_USER} identified by ${ORACLE_PASSWORD}; 
grant all privileges to ${ORACLE_USER};
exit;
EOF