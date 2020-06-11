# rabbda-university-portal

## Introduction
This is a proof of concept application that aims to demonstrate how Big Data can be used to create complex Big Data solutions.
Additionally, by implementing various releases, we present how a project evolves through multiple iterations.

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

Introduces technologies: RDBMS, Hadoop HDFS, Hive, and Pig.

### Getting Started Guide

To be able to produce this analysis you are required to have access to HDP 2.6.5 (Hortonwork Data Platform).
This example is created for HDP default user maria_dev. In case you want to reproduce it in a different enviroment, change the scripts accordingly.


### Example 1 - Ingesting sqlite data to Hive and analyse them

At this example we populate sample data and we import them to Hive for analysis

#### Phase A - Export data from sqlite and upload them to HDFS.

In the folder 'sqlite' the are 4 shell scripts that perform the following tasks:

1. install.sh - install sqlite in case it is not installed in your machine
2. create_db.sh - create a database file in your working directory
3. add_data.sh - populate sample data in the table commute_time
4. export_data.sh - select all data and export them. Command: bash export.sh > students_commute_time.txt

In the folder 'hdfs' there is a shell script with instruction on how to upload the data to HDFS.

#### Step B - Import data to Hive and make some analysis

In the folder 'hive' there are five HiveQL queries that perform the following tasks:

1. create_db.hql - create application's database in Hive.
2. create_table_hql - create a sample table in Hive.
3. drop_table.hql - drop application's database from Hive.
4. load_data.hql - load sample data to hive.
5. query_data.hql - query sample data with Hive.
