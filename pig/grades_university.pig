grades_university = LOAD 'hdfs://sandbox-hdp.hortonworks.com:8020/user/maria_dev/grades_university.csv' USING
   PigStorage(',') as (
   id:int,
   student_id:int,
   module_id:int,
   grade:int);

Dump grades_university;