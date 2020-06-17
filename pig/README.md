# Pig Analysis

Initially verify that Pig is running, in the terminal run the following:

```
pig –version
```
Then move to the pig folder and see its content:
```
cd pig
ls
```

In the pig folder you can see three pig scripts:
1. grades_high_school.pig, this script works with the grades_high_school.csv.
2. join.pig, this script works with all the data related to students.
3. students.pig, this script works with the students.csv.

Try running the scripts one by one, starting with the students.pig:
```
pig -x mapreduce students.pig
```
The above command instruct Pig to work with the MapReduce engine and executes the students.pig script.

The script does several things:
1. Loads students data from the HDFS
2. Groups the data by study field
3. Groups and counts the data by study field
4. Groups the data by study field and student nationality
5. Groups and counts the data by study field and student nationality

In all steps we dump the data to the console so to review the results.

Next, please try  another type of analysis by using the grades_high_school.pig script.

The script does the following:
1. Loads high school grades data from the HDFS
2. Groups the data by module
3. Calculates the average grade for each module
4. Calculates the avarage grage for all the modules

Finally, try join the data from different data sources:
```
pig -x mapreduce join.pig
```

The script does the following:
1.
2.
3.
4.

Move back to the parent folder:
```
cd ..
```
You have now completed iteration 2 and you can return to the documentation [here](https://github.com/UoW-CPC/rabbda-university-portal#iteration-3---sentiment-analysis-of-students-feedback) and continue exploring potential analysis by starting iteration 3.


