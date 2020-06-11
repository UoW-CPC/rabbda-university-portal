use university;

select *  from students_commute_time;

select study_year, count(study_year) from students_commute_time group by study_year;

select study_year, study_field, count(*) from students_commute_time group by study_year,study_field;