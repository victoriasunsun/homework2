hdfs dfs -mkdir /input
hdfs dfs -put data-forhadoop.md /input
hadoop jar /usr/local/hadoop-2.8.5/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.8.5.jar wordcount /input/reader.txt /output