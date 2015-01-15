set verify off
DEFINE sysPassword = "system"
DEFINE systemPassword = "system"
host /u01/app/oracle/product/11.2.0/xe/bin/orapwd file=/u01/app/oracle/product/11.2.0/xe/dbs/orapwXE password=&&sysPassword force=y
@/u01/app/oracle/product/11.2.0/xe/config/scripts/CloneRmanRestore.sql
@/u01/app/oracle/product/11.2.0/xe/config/scripts/cloneDBCreation.sql
@/u01/app/oracle/product/11.2.0/xe/config/scripts/postScripts.sql
@/u01/app/oracle/product/11.2.0/xe/config/scripts/postDBCreation.sql

create user admin identified by admin; 
grant all privileges to admin; 
create user dbuser identified by dbuser; 
grant all privileges to dbuser; 

exit
