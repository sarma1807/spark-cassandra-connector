#### spark-cassandra-connector compiled-assemblies : 
##### https://github.com/sarma1807/spark-cassandra-connector/tree/master/compiled-assemblies

---

#### Starting spark-shell with spark-cassandra-connector compiled-assembled jar

[cass@metalgear ~]$ `echo $SPARK_HOME`

`/u01/cass/spark-1.6.1-bin-hadoop2.6`


[cass@metalgear ~]$ `$SPARK_HOME/bin/spark-shell --jars /u01/cass/spark-cassandra-connector/spark-cassandra-connector-assembly-1.6.0-M2-ef47431-scala-2.10-20160504.jar`

###### Output :
```
log4j:WARN No appenders could be found for logger (org.apache.hadoop.metrics2.lib.MutableMetricsFactory).
log4j:WARN Please initialize the log4j system properly.
log4j:WARN See http://logging.apache.org/log4j/1.2/faq.html#noconfig for more info.
Using Spark's repl log4j profile: org/apache/spark/log4j-defaults-repl.properties
To adjust logging level use sc.setLogLevel("INFO")
Welcome to
      ____              __
     / __/__  ___ _____/ /__
    _\ \/ _ \/ _ `/ __/  '_/
   /___/ .__/\_,_/_/ /_/\_\   version 1.6.1
      /_/

Using Scala version 2.10.5 (Java HotSpot(TM) 64-Bit Server VM, Java 1.8.0_74)
Type in expressions to have them evaluated.
Type :help for more information.
Spark context available as sc.
16/05/13 16:59:42 WARN ObjectStore: Version information not found in metastore. hive.metastore.schema.verification is not enabled so recording the schema version 1.2.0
16/05/13 16:59:42 WARN ObjectStore: Failed to get database default, returning NoSuchObjectException
SQL context available as sqlContext.

scala> 
```

---

scala> `sc.jars.foreach(println)`

```
file:/u01/cass/spark-cassandra-connector/spark-cassandra-connector-assembly-1.6.0-M2-ef47431-scala-2.10-20160504.jar
```

---
