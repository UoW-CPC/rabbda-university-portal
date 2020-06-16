# Postgres Demo

## Introduction
In this section we introduce how we can perform several tasks with Postgres Database Engine. To more detail we will do the following:
1. Create the 'university' database
2. Create tables 'students', 'grades_high_school', 'grades_university'
3. Add sample data to all tables
4. Export all data to CSV files

In a production environment, the data  are already stored in a Postgres Server and we only need to perform task 4 so to export data to CSV files.
However, as this is a demonstration we also need to create the data.

## Iteration 2 - Phase A: Export data from Postgres
As it can be seen in the project documentation, Postgres  is being  utilised in iteration 2 to acquire data from. The rest of this document guides you through the several phases so to fulfill that particular task.

__Warning__: This is an multi-steps tutorial. HDP 2.6.5 comes with Postgres already installed, accompanied with several security configurations.
To avoid configuration changes that might break the system, we need to perform many steps.
In case you find it difficult to follow these steps, the CSV files have been included under the folder data so you can continue with your analysis.

### Postgres PSQL Guide

In case you are not logged in to the HDP web terminal (sample link: http://localhost:4200/), please log in as maria_dev with password maria_dev.
You now see a prompt like [maria_dev@sandbox-hdp ~]$.

The first step is to create the 'university' database, in the terminal run the following:
```
sudo -u postgres psql
```
The above command return a psql prompt for the user postgres to the default database postgres:

postgres=#

To see all databases type \l and hit enter.

Now we need to create the database, in the psql prompt type the follow and hit enter:
```
CREATE DATABASE university;
```
To see the new database type again \l and hit enter.

To work with the new database, type the following and hit enter:

```
\c university
```
You will get a response like: _You are now connected to database "university" as user "postgres":

university=#

 At this phase we have to create the tables. In the file create_tables.sql there are three SQL queries, copy the queries one by one and run them.

You will get three responses, one for each table:

__students table:__

NOTICE: CREATE TABLE / PRIMARY KEY will create implicit index "students_pkey" for table "students"

__grades_high_school table:__

NOTICE: CREATE TABLE will create implicit sequence "grades_high_school_id_sql"  for serial column "grades_high_school.id"

NOTICE: CREATE TABLE / PRIMARY KEY will create implicit index "grades_high_school_pkey" for table "grades_high_school"

__grades_university table:__

NOTICE: CREATE TABLE will create implicit sequence "__grades_university_id_sql"  for serial column "__grades_university.id"

NOTICE: CREATE TABLE / PRIMARY KEY will create implicit index "__grades_university_pkey" for table "__grades_university"

To see the three tables, type \dt and hit enter.

It is now time to insert into those tables our sample data. In the file insert_data.sql there are three SQL queries, copy the queries one by one and run them.

You will get three responses, one for each table:

__students table:__

INSERT 0 18

__grades_high_school table:__

INSERT 0 54

__grades_university table:__

INSERT 0 54

To see the records for each table run the following queries:

```
select * from students;
select * from grades_high_school;
select * from grades_university;
```

Finally we need to export the data to CSV files. In the psql prompt run the following queries:

```
COPY students TO '/tmp/students.csv' DELIMITER ',';
COPY grades_high_school TO '/tmp/grades_high_school.csv' DELIMITER ',';
COPY grades_university TO '/tmp/grades_university.csv' DELIMITER ',';

```
The above queries export the tables to the /tmp path and for each table we have unique response:

__students table:__

COPY 18

__grades_high_school:__

COPY 54

__grades_university:__

COPY 54

Our work with Postgres is completed and we can close the psql prompt. To do so, type \q and hit enter.

The final step is to copy the CSV files form the /tmp path to our working directory. In the terminal run the following:

```
cp /tmp/students.csv students.csv
cp /tmp/grades_high_school.csv grades_high_school.csv
cp /tmp/grades_university.csv grades_university.csv
```
If you run the ls command you can see the files listed in your working directory. To see the content of each file run the command 'cat filename', example:

```
cat students.csv
```

At this point you can return to the documentation [here](https://github.com/UoW-CPC/rabbda-university-portal#phase-a-export-data-from-postgres-and-upload-them-to-hdfs) and continue your analysis by first uploading the data into HDFS.
