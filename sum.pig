file_load =  LOAD '/home/acadgild/Pig/data.txt' USING PigStorage(',') AS(id:int,first:chararray,last:chararray,age:chararray,phoneno:chararray,city:chararray,percent:int);
group_data = GROUP file_load BY age;
sum_percentage = FOREACH group_data GENERATE group,SUM(file_load.percent);
dump sum_percentage;
