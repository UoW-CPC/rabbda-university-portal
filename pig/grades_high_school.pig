grades_high_school = LOAD 'hdfs://sandbox-hdp.hortonworks.com:8020/user/maria_dev/grades_high_school.csv' USING
   PigStorage(',') as (
   id:int,
   student_id:int,
   module:chararray,
   grade:int);

Dump grades_high_school;