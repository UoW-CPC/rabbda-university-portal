#!/bin/bash

sqlite3 students_commute_system.db <<EOF
create table commute_time (student_id INTEGER PRIMARY KEY, campus TEXT, home_address TEXT, distance INTEGER, commute_time_in_minutes INTEGER, age INTEGER, sex TEXT, nationality TEXT, study_field TEXT, study_year TEXT, transportation_mode TEXT);
EOF