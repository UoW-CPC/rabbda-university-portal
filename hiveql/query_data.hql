use university;

select *  from students_commute_time;

select study_year, count(study_year) from students_commute_time group by study_year;

select study_field,study_year, count(*) from students_commute_time group by study_field,study_year;

select campus, avg(commute_time_in_minutes) from students_commute_time group  by campus;