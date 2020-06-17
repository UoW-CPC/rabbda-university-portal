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

dump students;

group_study_field = group students by study_field;

dump group_study_field;

group_study_field_count = FOREACH group_study_field GENERATE FLATTEN(group) as (study_field), COUNT($1);

dump group_study_field_count;

group_study_field_nationality = group students by (study_field,nationality);

dump group_study_field_nationality;

group_study_field_nationality_count = FOREACH group_study_field_nationality GENERATE FLATTEN(group) as (study_field,nationality), COUNT($1);

dump group_study_field_nationality_count;