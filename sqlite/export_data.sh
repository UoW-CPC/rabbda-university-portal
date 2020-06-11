#!/bin/bash

sqlite3 students_commute_system.db <<EOF
select * from commute_time;
EOF