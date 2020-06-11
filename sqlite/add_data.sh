#!/bin/bash

sqlite3 students_commute_system.db <<EOF
insert into commute_time values ( 1854,'"Campus Region A"', '"Region A"', 1000, 5, 20, '"M"', '"German"', '"Arts"', '"Bachelor 2nd year"', '"Foot"');
insert into commute_time values ( 1855,'"Campus Region B"', '"Region A"', 2000, 10, 19, '"M"', '"Italian"', '"CS"', '"Bachelor 1st year"', '"Bus"');
insert into commute_time values ( 1856,'"Campus Region C"', '"Region A"', 2000, 10, 21, '"M"', '"Greek"', '"History"', '"Bachelor 3rd  year', '"Bus"');
insert into commute_time values ( 1857,'"Campus Region A"', '"Region B"', 2000, 10, 22, '"M"', '"German"', '"Arts"', '"Master', '"Bus"');
insert into commute_time values ( 1858,'"Campus Region A"', '"Region B"', 2000, 10, 20, '"M"', '"Polish"', '"Arts"', '"Bachelor 2nd"', '"Bus"');
insert into commute_time values ( 1859,'"Campus Region A"', '"Region B"', 2000, 10, 21, '"M"', '"UK"', '"Arts"', '"Bachelor 3rd year"', '"Bus"');
insert into commute_time values ( 1860,'"Campus Region B"', '"Region B"', 1000, 5, 22, '"M"', '"Korean"', '"CS"', '"Bachelor 1st year"', '"Bus"');
insert into commute_time values ( 1861,'"Campus Region A"', '"Region A"', 1000, 5, 29, '"M"', '"Chinese"', '"Arts"', '"Master"', '"Foot"');
insert into commute_time values ( 1862,'"Campus Region A"', '"Region A"', 1000, 5, 24, '"M"', '"German"', '"Arts"', '"Master"', '"Foot"');
insert into commute_time values ( 1863,'"Campus Region C"', '"Region A"', 1100, 5, 18, '"M"', '"Italian"', '"History"', '"Bachelor 1st year"', '"Foot"');
insert into commute_time values ( 1864,'"Campus Region A"', '"Region C"', 1100, 5, 23, '"M"', '"Russian"', '"Arts"', '"Bachelor 3rd year"', '"Foot"');
insert into commute_time values ( 1865,'"Campus Region B"', '"Region A"', 2000, 10, 21, '"M"', '"Russian"', '"CS"', '"Bachelor 2nd year"', '"Bus"');
insert into commute_time values ( 1866,'"Campus Region B"', '"Region C"', 2000, 10, 31, '"M"', '"Italian"', '"CS"', '"Master"', '"Bus"');
insert into commute_time values ( 1867,'"Campus Region B"', '"Region C"', 2000, 10, 23, '"M"', '"Greek"', '"CS"', '"Bachelor 2nd year"', '"Bus"');
insert into commute_time values ( 1868,'"Campus Region A"', '"Region A"', 1000, 5, 19, '"M"', '"Turkish"', '"Arts"', '"Bachelor 1st year"', '"Foot"');
insert into commute_time values ( 1869,'"Campus Region A"', '"Region C"', 2000, 5, 20, '"M"', '"Turkish"', '"Arts"', '"Bachelor 2nd year"', '"Foot"');
insert into commute_time values ( 1870,'"Campus Region C"', '"Region C"', 1100, 5, 26, '"M"', '"Korean"', '"History"', '"Bachelor 3rd year"', '"Foot"');
insert into commute_time values ( 1871,'"Campus Region C"', '"Region C"', 1100, 5, 26, '"M"', '"Chinese"', '"History"', '"Master"', '"Foot"');
insert into commute_time values ( 1872,'"Campus Region A"', '"Region A"', 1000, 5, 21, '"M"', '"German"', '"Arts"', '"Bachelor 2nd"', '"Foot"');
insert into commute_time values ( 1873,'"Campus Region C"', '"Region B"', 2000, 10, 19, '"M"', '"UK"', '"History"', '"Bachelor 1st year"', '"Bus"');
EOF