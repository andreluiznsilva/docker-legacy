#!/bin/bash

service oracle-xe start

export ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe
export PATH=$ORACLE_HOME/bin:$PATH
export ORACLE_SID=XE

sqlplus -S system/oracle << EOF
alter user system identified by system;
create user dbuser identified by dbuser; 
grant all privileges to dbuser;
exit;
EOF