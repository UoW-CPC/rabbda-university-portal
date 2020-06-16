# SQLite Demo

## Introduction
In this section we introduce how we can perform several tasks with SQLite Database Engine. To more detail we will do the following:
1. Create the 'students_commute_system' database
2. Create table 'commute_time'
3. Add sample data to the table
4. Export all data to a CSV file

In a production environment, the data  are already stored in a database and we only need to perform task 4 so to export the data to CSV a file.
However, as this is a demonstration we also need to create the data.

## Iteration 1 - Phase A: Export data from SQLite

As it can be seen in the project documentation, SLite  is being  utilised in iteration 1 to acquire data. The rest of this document guides through the several phases so to fulfill that particular task.


### SQLite Guide

Log into the HDP web terminal (sample link: http://localhost:4200/) as maria_dev with password maria_dev.
You now see a prompt like [maria_dev@sandbox-hdp ~]$.

The first step is to check that SQLite is installed in the terminal run the following:
```
sqlite3
```

If the service exist you will get an SQLite prompt, sqlite>, to exit type .quit and hit enter. In case the service does not exist you can install it by using the command:
```
yum -y install sqlite
```

Having now installed the service you must create the database and the data table. In this folder there is a bash script create_db.sh that does this for you. To run it in terminal execute the following:

```
bash create_db.sh
```
To see the database file use the ls commands and look for a file named students_commute_time.db.

In this directory there also another bash script which inserts sample data to the our database. To execute it use the following command:
```
bash insert_data.sh
```

Finally we need to export the sample data from the SQLite database. To do so use the bash script export_data.sh:
```
bash export_data.sh > students_commute_time.csv
```




At this point you can return to the documentation [here](https://github.com/UoW-CPC/rabbda-university-portal#phase-a-export-data-from-postgres-and-upload-them-to-hdfs) and continue your analysis by first uploading the data into HDFS.
