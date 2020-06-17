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
   high_school_address:chararray);

grades_high_school = LOAD 'hdfs://sandbox-hdp.hortonworks.com:8020/user/maria_dev/grades_high_school.csv' USING
   PigStorage(',') as (
   id:int,
   student_id:int,
   module:chararray,
   grade:int);

grades_university = LOAD 'hdfs://sandbox-hdp.hortonworks.com:8020/user/maria_dev/grades_university.csv' USING
   PigStorage(',') as (
   id:int,
   student_id:int,
   module_id:int,
   grade:int);

dump students;

dump grades_high_school;

dump grades_university;

cogroup_grades = COGROUP grades_high_school by student_id, grades_university by student_id;

dump cogroup_grades;

join_students_grades = JOIN students BY student_id, cogroup_grades BY group;

dump join_students_grades;

filter_data = FILTER join_students_grades BY study_field == 'CS';

dump filter_data;
