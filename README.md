# rabbda-university-portal

## Introduction
This is a proof of concept application that aims to demonstrate how Big Data can be used to create complex Big Data solutions.
Additionally, by implementing various releases, we present how a project evolves through multiple iterations.


__RABBDA project:__

RABBDA (Reduce Access Barriers to Big Data Analytics) is created by the [Centre of Parallel Computing](https://www.westminster.ac.uk/research/groups-and-centres/centre-for-parallel-computing) - University of Westminster.

The project objective is to provide students and practitioners access to Big Data technologies and learning material. The university portal is designed to serve RABBDA project as an illustration on how to utilise Big Data technologies so to build complex architectures.

RABBDA is the first attempt to merge a Science Gateway with a KREL (knowledge repository and learning), called [SMARTEST](https://smartest-repo.herokuapp.com/) to facilitate the comprehension of the various aspects of the portal.
For more information, please review RABBDA here.


### Architecture

From architecture's point of view, the application exports relational data from RDMBS and analyse them with Big Data technologies.
To more detail the application aims to analyse students data to answer complex scientific question relating to students performance.

![uni_architecture](https://user-images.githubusercontent.com/32298274/84429346-a3848480-ac30-11ea-96f3-e7141a37b7fe.png)


The above figure is a high level architecture of the system, to more detail we can see two phases:

Phase A:
 * Data acquisition: Export relational data.
 * Data ingestion: Upload data to HDFS.

 Phase B:
 * Hive: analyse the data with the SQL-like Hive query language.
 * Pig: analyse the data with the scripting language Pig Latin.

Introduced technologies: RDBMS, Apache Hadoop HDFS, Apache Hive, Apache Pig.

__Important:__ From a project's management point of view we assume that we are in the project analysis phases.
At this phase the architecture helps us to understand what needs to be done and communicate our aims and objectives.
While we run through several iterations the architecture can change to extend our work and include new requirements.

### Getting Started Guide

To be able to follow this demo you are required to have access to HDP 2.6.5 (Hortonwork Data Platform).
This example is created for HDP default user maria_dev. In case you want to reproduce it in a different environment, change the scripts accordingly.

#### Iterations

As it is described in the introduction in order to understand and build our solution we need to introduce several iterations.

Each iteration focuses on a specific task and delivers a complete solution for this task. This demonstrations requires 5 iterations:
1. Iteration 1 - Ingesting SQLite data to Hive and perform analysis  - Mentioned in the architecture.
2. Iteration 2 - Ingesting postgres data HDFS and analyse them with Pig - Mentioned in the architecture.
3. Iteration 5 - Sentiment analysis of students feedback - Experimental.
4. Iteration 3 - Ingesting relational data by using Apache Sqoop - Experimental.
5. Iteration 4 - Creating a workflow with Apache  Oozie to automate the above tasks - Experimental.

#### Download the project

The initial step is to download the repository in your Hadoop machine. To do so, in terminal run the following command:
 ```
 git clone https://github.com/UoW-CPC/rabbda-university-portal.git
 ```
First move to the working directory by executing the command:
 ```
 cd rabbda-university-portal
 ```
 Now execute the command:
 ```
 ls
 ```
 There you can see seven folders and three files:
  * __hiveql__ - folder - contains Hive queries and instructions used in iteration 1.
  * __pig__ - folder - contains Pig scripts used in iteration 2.
  * __postgres__ - folder - contains SQL queries and instructions used in iteration 2.
  * __sqlite__ - folder - contains SQL queries in bash scripts and instructions used in iteration 1.
  * __README.md__ - file - project information and instructions on how to follow this demo.



__Tip:__ changing directories with terminal commands.
 ```
 ls             #list all folders and files
 cd folder_name #move to folder
 cd ..          #move to parent folder
 pwd            #pring working directory
 ```



#### Iteration 1 - Ingesting SQLite data to Hive and perform analysis

In this example we populate sample data into SQLite and import them to Hive for analysis.

##### Phase A: Export data from SQLite and upload them to HDFS

Please, follow the instruction in the SQLite folder [here](https://github.com/UoW-CPC/rabbda-university-portal/tree/master/sqlite#sqlite-demo)
and return on completion to continue with the analysis.

In case you successfully completed the data acquisition task from the Postgres database, you simple need to upload the SCV file to HDFS.
To do so run the following commands:

```
hdfs dfs -put students_commute_time.txt \user\maria_dev\
```
To check that the file is uploaded into the HDFS run:
```
hdfs dfs -ls /user/maria_dev
```
Also you can see the content of the file by using the cat command, sample command:
```
hdfs dfs -cat /user/maria_dev/students_commute_time.txt
```

##### Phase B: Import data to Hive and make some analysis

Having imported the data to HDFS, it is now time to analyse those data with Hive. To do so, follow the instruction in the hiveql folder [here](https://github.com/UoW-CPC/rabbda-university-portal/tree/master/hiveql#hive-analysis).


#### Iteration 2 - Ingesting postgres data HDFS and analyse them with Pig

In this example we populate sample data, upload the to HDFS and analyse them with Pig.

##### Phase A: Export data from postgres and upload them to HDFS.

Please, follow the instruction in the postgres folder [here](https://github.com/UoW-CPC/rabbda-university-portal/tree/master/postgres#postgres-demo)
and return on completion to continue with the analysis.

In case you successfully completed the data acquisition task from the Postgres database, you simple need to upload the three SCV files to HDFS.
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
Also you can see the content of a file by using the cat command, sample command:
```
hdfs dfs -cat /user/maria_dev/students.csv
```

##### Phase B: Analyse the data with Pig

At this phase we will be using the data we have upload into the Hadoop envirnament to make some analysis. To do so please follow the instruction here.

#### Iteration 3 - Sentiment analysis of students feedback

#### Iteration 4 - Ingesting relational data by using Apache Sqoop

#### Iteration 5 - Creating a workflow with Apache  Oozie to automate the above tasks

