grades_high_school = LOAD 'hdfs://sandbox-hdp.hortonworks.com:8020/user/maria_dev/grades_high_school.csv' USING
   PigStorage(',') as (
   id:int,
   student_id:int,
   module:chararray,
   grade:int);

dump grades_high_school;

group_module = group grades_high_school by module;

group_module_avg = FOREACH group_module GENERATE group AS module, AVG(grades_high_school.grade) AS average;

dump group_module_avg;

modules_avg = GROUP group_module_avg ALL;

overall_avg = FOREACH modules_avg GENERATE AVG(group_module_avg.average);

dump overall_avg;