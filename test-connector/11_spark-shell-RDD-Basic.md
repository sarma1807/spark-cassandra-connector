### spark-cassandra-connector using spark-shell - Basic RDD


#### start spark-shell along with spark-cassandra-connector jar
$ `spark-shell --jars /u01/cass/spark-cassandra-connector/spark-cassandra-connector-assembly-1.6.0-M2-ef47431-scala-2.10-20160504.jar`

---

#### code :

```

// import spark-cassandra-connector
import com.datastax.spark.connector._

// read cassandra table - returns RDD of CassandraRow objects
val empsRDD = sc.cassandraTable("cassdemo", "employees")

// read cassandra table - returns RDD of CassandraRow objects
// supports SELECTing few columns
// supports WHERE clause for cassandra side row filtering - not spark filtering
// val empsRDD = sc.cassandraTable("cassdemo", "employees").select("department_name", "employee_name", "salary").where("department_name = ?", "IT")

// display initial data
empsRDD.take(5).foreach(println)

// increment salary by 2%
val empsRDD_salinc = empsRDD.map(r => (r.getString("department_name"), r.getString("employee_name"), r.getDouble("salary")+(0.02*r.getDouble("salary"))))

// display data after salary increment
empsRDD_salinc.take(5).foreach(println)

// save updated data to cassandra
empsRDD_salinc.saveToCassandra("cassdemo", "employees", SomeColumns("department_name", "employee_name", "salary"))

```

---

#### output :

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
16/05/19 14:16:16 WARN ObjectStore: Version information not found in metastore. hive.metastore.schema.verification is not enabled so recording the schema version 1.2.0
16/05/19 14:16:16 WARN ObjectStore: Failed to get database default, returning NoSuchObjectException
SQL context available as sqlContext.

scala> // import spark-cassandra-connector
scala> import com.datastax.spark.connector._
import com.datastax.spark.connector._

scala> // read cassandra table - returns RDD of CassandraRow objects
scala> val empsRDD = sc.cassandraTable("cassdemo", "employees")
empsRDD: com.datastax.spark.connector.rdd.CassandraTableScanRDD[com.datastax.spark.connector.CassandraRow] = CassandraTableScanRDD[0] at RDD at CassandraRDD.scala:15

scala> // read cassandra table - returns RDD of CassandraRow objects
scala> // supports SELECTing few columns
scala> // supports WHERE clause for cassandra side row filtering - not spark filtering
scala> // val empsRDD = sc.cassandraTable("cassdemo", "employees").select("department_name", "employee_name", "salary").where("department_name = ?", "IT")

scala> // display initial data
scala> empsRDD.take(5).foreach(println)
CassandraRow{department_name: Sales, employee_name: Sell Queen, employee_id: 1004, hire_date: 2016-03-25 00:00:00-0400, salary: 3405.20}
CassandraRow{department_name: IT, employee_name: John Dow, employee_id: 1002, hire_date: 2016-02-02 00:00:00-0500, salary: 2700.50}
CassandraRow{department_name: IT, employee_name: Scott Tiger, employee_id: 1001, hire_date: 2016-01-01 00:00:00-0500, salary: 2300.00}
CassandraRow{department_name: Finance, employee_name: Larry Emperor, employee_id: 1003, hire_date: 2016-02-15 00:00:00-0500, salary: 2250.00}

scala> // increment salary by 2%
scala> val empsRDD_salinc = empsRDD.map(r => (r.getString("department_name"), r.getString("employee_name"), r.getDouble("salary")+(0.02*r.getDouble("salary"))))
empsRDD_salinc: org.apache.spark.rdd.RDD[(String, String, Double)] = MapPartitionsRDD[2] at map at <console>:32

scala> // display data after salary increment
scala> empsRDD_salinc.take(5).foreach(println)
(Sales,Sell Queen,3473.3039999999996)
(IT,John Dow,2754.51)
(IT,Scott Tiger,2346.0)
(Finance,Larry Emperor,2295.0)

scala> // save updated data to cassandra
scala> empsRDD_salinc.saveToCassandra("cassdemo", "employees", SomeColumns("department_name", "employee_name", "salary")) 

scala> 
```

---
