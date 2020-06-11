# rabbda-university-portal

## Introduction
This is a proof of concept application that aims to demonstrate how Big Data can be used to create complex Big Data solutions.
Additionally, by implementing various releases, we present how a project evolves through multiple iterations.

### Architecture

From architecture's point of view, the application exports relational data from some sample RDMBS and analyse them with Big Data technnologies.
To more detail the application amis to analyse students data to answer complex scientific question relating to students performance.

 ![uni_architecture](https://user-images.githubusercontent.com/32298274/84429346-a3848480-ac30-11ea-96f3-e7141a37b7fe.png)

The above figure is a high level architecture of the system, to more detail we can see two phases:
Phase A:
 * Data acquisition: Export relational data.
 * Data ingestion: Upload data to HDFS.
 Phase B:
 * Hive: analyse the data with the SQL-like, Hive query language.
 * Pig: analyse the data with the scripting language, Pig Latin.

The application introduces technologies like RDBMS, Hadoop HDFS, Hive, and Pig.

### Example 1 - Ingesting sqlite data to Hive

#### Step A - Export data from sqlite and upload them to HDFS.

#### Step B - Import data to Hive and make some analysis