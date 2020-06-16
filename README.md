# rabbda-university-portal

## Introduction
This is a proof of concept application that aims to demonstrate how Big Data can be used to create complex Big Data solutions.
Additionally, by implementing various releases, we present how a project evolves through multiple iterations.


__RABBDA project:__

RABBDA (Reduce Access Barriers to Big Data Analytics) is created by the [Centre of Parallel Computing](https://www.westminster.ac.uk/research/groups-and-centres/centre-for-parallel-computing) - University of Westminster.

The project objective is to provide students and practitioners access to Big Data technologies and learning material. The university portal is designed to serve RABBDA project as an illustration on how to utilise Big Data technologies so to build complex architectures.

RABBDA is the first attempt to merge a Science Gateway with a KREL (knowledge repository and learning), called [SMARTEST](https://smartest-repo.herokuapp.com/) to facilitate the comprehension of the various aspects of the portal.
For more information, please review RABBDA here


### Architecture

From architecture's point of view, the application exports relational data from RDMBS and analyse them with Big Data technologies.
To more detail the application aims to analyse students data to answer complex scientific question relating to students performance.

![uni_architecture](https://user-images.githubusercontent.com/32298274/84429346-a3848480-ac30-11ea-96f3-e7141a37b7fe.png)

__Concept architecture__ can change while developing
The above figure is a high level architecture of the system, to more detail we can see two phases:

Phase A:
 * Data acquisition: Export relational data.
 * Data ingestion: Upload data to HDFS.

 Phase B:
 * Hive: analyse the data with the SQL-like Hive query language.
 * Pig: analyse the data with the scripting language Pig Latin.

Introduced technologies: RDBMS, Apache Hadoop HDFS, Apache Hive, Apache Pig, Apache Sqoop.

### Getting Started Guide

To be able to produce this analysis you are required to have access to HDP 2.6.5 (Hortonwork Data Platform).
This example is created for HDP default user maria_dev. In case you want to reproduce it in a different environment, change the scripts accordingly.

#### Iterations

As it is described in the introduction in order to understand and build our solution we need to introduce several iterations.

Each iteration focuses on a specific task and delivers a complete solution for this task. This demonstrations requires 5 iterations:
1. Iteration 1 - Ingesting sqlite data to Hive and analyse them.
2. Iteration 2 - Ingesting postgres data HDFS and analyse them with Pig.
3. Iteration 3 - Ingesting relational data by using Apache Sqoop.
4. Iteration 4 - Creating a workflow with Apache  Oozie to automate the above tasks.
5. Iteration 5 - Sentiment analysis of students feedback.

#### Iteration 1 - Ingesting sqlite data to Hive and analyse them

At this example we populate sample data and import them to Hive for analysis

##### Phase A: Export data from sqlite and upload them to HDFS

In the folder 'sqlite' the are 4 shell scripts that perform the following tasks:

1. install.sh - install sqlite in case it is not installed in your machine
2. create_db.sh - create a database file in your working directory
3. add_data.sh - populate sample data in the table commute_time
4. export_data.sh - select all data and export them. Command: bash export_data.sh > students_commute_time.txt

In the folder 'hdfs' there is a shell script with instruction on how to upload the data to HDFS.

##### Phase B: Import data to Hive and make some analysis

In the folder 'hive' there are five HiveQL queries that perform the following tasks:

1. create_db.hql - create application's database in Hive.
2. create_table_hql - create a sample table in Hive.
3. drop_table.hql - drop application's database from Hive.
4. load_data.hql - load sample data to hive.
5. query_data.hql - query sample data with Hive.

#### Iteration 2 - Ingesting postgres data HDFS and analyse them with Pig

##### Phase A: Export data from postgres and upload them to HDFS.

Please follow the instruction in the postgres folder [here](https://github.com/UoW-CPC/rabbda-university-portal/tree/master/postgres#postgres-demo)
and on completion return here to continue with the analysis.

In case you successfully complete the data acquisition from the Postgres database, you simple need to upload the three SCV files to HDFS.
To do so run the following commands:

```
hdfs dfs -put students.csv \user\maria_dev\
hdfs dfs -put grades_high_school.csv \user\maria_dev\
hdfs dfs -put grades_university.csv \user\maria_dev\
```
To check that the files are uploaded into the HDFS run:
```
hdfs dfs -ls /user/maria_dev
```
Also you can see the contect of a file by using the cat command, sample command:
```
hdfs dfs -cat /user/maria_dev/students.csv
```



##### Phase B: Analyse the data with Pig

#### Iteration 3 - Ingesting relational data by using Apache Sqoop

#### Iteration 4 - Creating a workflow with Apache  Oozie to automate the above tasks

#### Iteration 5 - Sentiment analysis of students feedback