#!/bin/bash

sqlplus -S system/oracle@localhost << EOF
@init.sql
exit;
EOF