#!/bin/bash

sqlite3 students_commute_system.db <<EOF
.header on
.mode csv
select * from commute_time;
EOF