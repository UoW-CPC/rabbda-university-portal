for table in student grades_high_school grades_university;
do pg_dump -t $table -U postgres university > /home/maria_dev/$table.sql;
done;

sudo -u postgres pg_dump -t student -U postgres university > /home/maria_dev/student.sql;