### spark-cassandra-connector using spark-shell - RDD with Class


#### start spark-shell along with spark-cassandra-connector jar
$ `spark-shell --jars /u01/cass/spark-cassandra-connector/spark-cassandra-connector-assembly-1.6.0-M2-ef47431-scala-2.10-20160504.jar`

---

#### code :

```

// import spark-cassandra-connector
import com.datastax.spark.connector._

// import joda date libraries
import org.joda.time.DateTime
import org.joda.time.DateTimeZone

// case class for schema
case class empRowClass (department_name: String, employee_name: String, employee_id: Int, hire_date: org.joda.time.DateTime, salary: BigDecimal)
case class empRowClass2 (department_name: String, employee_name: String, salary: BigDecimal)

// read cassandra table - returns RDD of empRowClass objects
val empsRDD = sc.cassandraTable[empRowClass]("cassdemo", "employees")

// read cassandra table - returns RDD of CassandraRow objects
// supports SELECTing few columns
// supports WHERE clause for cassandra side row filtering - not spark filtering
// val empsRDD = sc.cassandraTable[empRowClass2]("cassdemo", "employees").select("department_name", "employee_name", "salary").where("department_name = ?", "IT")

// display initial data
empsRDD.take(5).foreach(println)

// increment salary by 2%
val empsRDD_salinc = empsRDD.map(r => (r.department_name, r.employee_name, r.salary+(0.02*r.salary)))

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
16/05/19 16:25:28 WARN ObjectStore: Version information not found in metastore. hive.metastore.schema.verification is not enabled so recording the schema version 1.2.0
16/05/19 16:25:28 WARN ObjectStore: Failed to get database default, returning NoSuchObjectException
16/05/19 16:25:49 WARN ObjectStore: Version information not found in metastore. hive.metastore.schema.verification is not enabled so recording the schema version 1.2.0
16/05/19 16:25:50 WARN ObjectStore: Failed to get database default, returning NoSuchObjectException
SQL context available as sqlContext.

scala> // import spark-cassandra-connector
scala> import com.datastax.spark.connector._
import com.datastax.spark.connector._

scala> // import joda date libraries
scala> import org.joda.time.DateTime
import org.joda.time.DateTime

scala> // case class for schema
scala> case class empRowClass (department_name: String, employee_name: String, employee_id: Int, hire_date: org.joda.time.DateTime, salary: BigDecimal)
defined class empRowClass

scala> case class empRowClass2 (department_name: String, employee_name: String, salary: BigDecimal)
defined class empRowClass2


scala> // read cassandra table - returns RDD of empRowClass objects
scala> val empsRDD = sc.cassandraTable[empRowClass]("cassdemo", "employees")
empsRDD: com.datastax.spark.connector.rdd.CassandraTableScanRDD[empRowClass] = CassandraTableScanRDD[0] at RDD at CassandraRDD.scala:15

scala> // read cassandra table - returns RDD of CassandraRow objects
scala> // supports SELECTing few columns
scala> // supports WHERE clause for cassandra side row filtering - not spark filtering
scala> // val empsRDD = sc.cassandraTable[empRowClass2]("cassdemo", "employees").select("department_name", "employee_name", "salary").where("department_name = ?", "IT")


scala> // display initial data
scala> empsRDD.take(5).foreach(println)
empRowClass(Sales,Sell Queen,1004,2016-03-25T00:00:00.000-04:00,3405.20)
empRowClass(IT,John Dow,1002,2016-02-02T00:00:00.000-05:00,2700.50)
empRowClass(IT,Scott Tiger,1001,2016-01-01T00:00:00.000-05:00,2300.00)
empRowClass(Finance,Larry Emperor,1003,2016-02-15T00:00:00.000-05:00,2250.00)

scala> // increment salary by 2%
scala> val empsRDD_salinc = empsRDD.map(r => (r.department_name, r.employee_name, r.salary+(0.02*r.salary)))
empsRDD_salinc: org.apache.spark.rdd.RDD[(String, String, scala.math.BigDecimal)] = MapPartitionsRDD[2] at map at <console>:36

scala> // display data after salary increment
scala> empsRDD_salinc.take(5).foreach(println)
(Sales,Sell Queen,3473.3040)
(IT,John Dow,2754.5100)
(IT,Scott Tiger,2346.0000)
(Finance,Larry Emperor,2295.0000)


scala> // save updated data to cassandra
scala> empsRDD_salinc.saveToCassandra("cassdemo", "employees", SomeColumns("department_name", "employee_name", "salary")) 

scala>
```

---
