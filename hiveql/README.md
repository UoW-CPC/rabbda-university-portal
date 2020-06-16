# Hive Analysis

To be able to analyse data with Hive, it is required to perform several taks:
1. Create a database
2. Create tables
3. Load data to these tables
4. Query those tables and perfom Map-Reduce jobs

Move to the hiveql folder and see its contents:
```
cd hiveql
ls
```

In this folder there are five four queries that perform the above tasks. You can run them through terminal with the following commands:
```
hive -f create_db.hql
hive -f create_table.hql
hive -f load_data.hql
hive -f query_data.hql
```

If you have successfully run the above queries, you are able to see several results like:
* all the data stored the commute_time table
* number of students per study year
* number of students per field and study year
* Average commute time per campus

Can you see that some data are badly formatted? It that affects our results?

__Notice:__ In case you want to reproduce the above step you can drop the database by using the script drop_database.
```
hive -f drop_db.hql
```

You have now completed iteration 1 and you can return to the documentation [here](https://github.com/UoW-CPC/rabbda-university-portal#iteration-2---ingesting-postgres-data-hdfs-and-analyse-them-with-pig) and continue your analysis by starting iteration 2.


