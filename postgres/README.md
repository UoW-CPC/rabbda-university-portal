# Postgres Demo

## Introduction
In this section we introduce the Postgres database engine so to perform several tasks:
1. Create the 'university' database
2. Create tables 'students', 'grades_high_school', 'grades_university'
3. Add sample data to all tables
4. Export all data to CSV files

In a production system, the data probable are already stored in a Postgres server and we only need to perform task 4. Export data to CSV files.
However, as this is a demonstration we also need to create the data.

## Iteration 2 - Phase A - Export data from postgres
As it can be seen in the project documentation,  postgres  is being  utilised in Iteration 2 and the rest of this document guides through the several phases so to fulfill that particular task.

__Warning__: This is an advanced tutorial. HDP 2.6.5 comes with Postgres already installed, accompanied with several security configurations.
To avoid configuration changes that might break the system, we need to perform many steps. However, it is also a chance to familiarise with Linux terminal and Postgres.

Log in to the web terminal (http://host:4200/) as maria_dev with password maria_dev.
You will see a prompt like [maria_dev@sandbox-hdp ~]$.

The first step is to create the 'university' database, in the terminal run the following:
```
sudo -u postgres psql
```
The above command return a psql prompt for user postgres to the default database postgres:

postgres=#

To see all databases type \l and hit enter.

Now we need to create the database, in the psql prompt type the follow and hit enter:
```
CREATE DATABASE university;
```
To see the new database type again \l and hit enter.

We now need to work on the new database. Type the following and hit enter:

```
\c university
```
You will get a response like: _You are now connected to database "university" as user "postgres":

university=#

 At this phase we have to create the tables. In the file create_tables.sql there are three SQL queries, copy the queries one by one and run them.

You will get three responses, one for each table:

__students table:__

NOTICE: CREATE TABLE / PRIMARY KEY will create implicit index "students_pkey" for table "students"

__grades_high_school:__

NOTICE: CREATE TABLE will create implicit sequence "grades_high_school_id_sql"  for serial column "grades_high_school.id"

NOTICE: CREATE TABLE / PRIMARY KEY will create implicit index "grades_high_school_pkey" for table "grades_high_school"

__grades_university:__

NOTICE: CREATE TABLE will create implicit sequence "__grades_university_id_sql"  for serial column "__grades_university.id"

NOTICE: CREATE TABLE / PRIMARY KEY will create implicit index "__grades_university_pkey" for table "__grades_university"

To see the three table type \dt and hit enter.

It is now time to insert our sample data. In the file insert_data.sql there are three SQL queries, copy the queries one by one and run them.

You will get three responses, one for each table:

__students table:__

INSERT 0 18

__grades_high_school:__

INSERT 0 54

__grades_university:__

INSERT 0 54

To see the for each table run the following queries:

```
select * from students;
select * from grades_high_school;
select * from grades_university;
```

Finally we need to export the data to CSV files:

```
COPY students TO '/tmp/student.csv' DELIMITER ',';
COPY grades_high_school TO '/tmp/grades_high_school.csv' DELIMITER ',';
COPY grades_university TO '/tmp/grades_university.csv' DELIMITER ',';

```
The above export the tables to the /tmp path and for each table we have unique response:

__students table:__

COPY 18

__grades_high_school:__

COPY 54

__grades_university:__

COPY 54

Now we have finished our work with Postgres and we can close the psql prompt. To do type \q and hit enter.

The final step is to copy the CSV files form the /tmp path to our working directory. In the terminal run the following:

```
cp /tmp/students.csv students.csv
cp /tmp/grades_high_school.csv grades_high_school.csv
cp /tmp/grades_university.csv grades_university.csv
```
If you now run ls you can see the files listed in your working directory. To see the content of each file run the command 'cat filename', example:

```
cat students.csv
```

__Info__: In case you find difficult to follow these steps, the CSV files have been included in this folder so you can continue your analysis.

__Important:__ It is clear by now that the acquisition phase it can be quite complicated and it can be a first step to a successful project.

At this point you can return to the documentation and continue your analysis by first uploading the data into HDFS.




```
```