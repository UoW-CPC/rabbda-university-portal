use university;

drop table if exists students_commute_time;

create table students_commute_time
(
  student_id int,
  campus string,
  home_address string,
  distance int,
  commute_time_in_minutes int,
  age int,
  sex string,
  nationality string,
  study_field string,
  study_year string,
  transportation_mode string
  )
row format delimited fields terminated by ',';