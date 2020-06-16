students = LOAD 'hdfs://sandbox-hdp.hortonworks.com:8020/user/maria_dev/students.csv' USING
   PigStorage(',') as (
   student_id:int,
   name:chararray,
   campus:chararray,
   study_field:chararray,
   registration_year:int,
   age:int,
   sex:chararray,
   nationality:chararray,
   home_address:chararray,
   high_school:chararray,
   high_scholl_address:chararray);

Dump student;

