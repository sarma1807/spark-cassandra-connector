### spark-cassandra-connector using spark-shell - DataFrame


#### start spark-shell along with spark-cassandra-connector jar
$ `spark-shell --jars /u01/cass/spark-cassandra-connector/spark-cassandra-connector-assembly-1.6.0-M2-ef47431-scala-2.10-20160504.jar`

---

#### code :

```

// import spark libraries
import org.apache.spark.SparkContext
import org.apache.spark.SparkContext._
import org.apache.spark.SparkConf
import org.apache.spark.sql
import org.apache.spark.sql.cassandra._
import org.apache.spark.sql.cassandra.CassandraSQLContext
import org.apache.spark.sql.functions._
import org.apache.spark.sql.types._
import sqlContext.implicits._

// import spark-cassandra-connector
import com.datastax.spark.connector._
import com.datastax.spark.connector.cql.CassandraConnector

// import java data & joda date libraries
import java.util.Calendar
import java.util.TimeZone
import org.joda.time.DateTime
import org.joda.time.DateTimeZone


// create spark sql context
val sqc = new org.apache.spark.sql.SQLContext(sc)

// create spark cassandra sql context
val cc = new CassandraSQLContext(sc)


// prepare SQL statement
var sqlQuery1 = "SELECT department_name, employee_name, employee_id, hire_date, salary FROM cassdemo.employees"
var sqlQuery2 = "SELECT department_name, employee_name, salary FROM cassdemo.employees WHERE department_name = 'IT'"


// read cassandra table - returns DataFrame
val empsDF = cc.cassandraSql(sqlQuery1)
val itEmpsDF = cc.cassandraSql(sqlQuery2)

// cassandra timestamp is returned as java.sql.Timestamp

// print schema of the DataFrame
empsDF.printSchema

// display initial data
empsDF.show(5, false)
itEmpsDF.show(5, false)

////////////////////////////////////////////////////////
// method 1
// transformations on DataFrame returns new DataFrame

// select few columns
empsDF.select("department_name", "employee_name", "salary").show(5, false)

// group by and count
empsDF.groupBy("department_name").count.show(5, false)

// group by multiple aggregations
empsDF.groupBy("department_name").agg(sum("salary").alias("total_dept_salary"), count("employee_name").alias("no_of_employees")).show(5, false)

// where filter & sort
empsDF.where("department_name = 'IT'").select("employee_name", "salary").sort($"salary".asc).show(5, false)
empsDF.where("department_name = 'IT'").select("employee_name", "salary").sort($"salary".desc).show(5, false)


////////////////////////////////////////////////////////
// method 2
// register DataFrame to access with-in Spark SQL
empsDF.registerTempTable("empsDF_TT")

// aggregation transformation - query Spark SQL temp table
val deptSalariesDF = cc.sql("SELECT department_name, sum(salary) as total_dept_salary, count(employee_name) as no_of_employees FROM empsDF_TT GROUP BY department_name")

deptSalariesDF.printSchema
deptSalariesDF.show(5, false)


// increment salary by 2%
val empsDF_salinc = cc.sql("SELECT department_name, employee_name, salary+((salary*2)/100) as salary FROM empsDF_TT")

empsDF_salinc.printSchema
empsDF_salinc.show(5, false)


// save DataFrame to cassandra
// .mode("") : overwrite / append / ignore / error
// .mode("append") in cassandra will be UPSERT
empsDF_salinc.write.cassandraFormat("employees", "cassdemo").mode("append").save()

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
16/05/20 00:32:13 WARN ObjectStore: Version information not found in metastore. hive.metastore.schema.verification is not enabled so recording the schema version 1.2.0
16/05/20 00:32:13 WARN ObjectStore: Failed to get database default, returning NoSuchObjectException
SQL context available as sqlContext.

scala> // import spark libraries
scala> import org.apache.spark.SparkContext
scala> import org.apache.spark.SparkContext._
scala> import org.apache.spark.SparkConf
scala> import org.apache.spark.sql
scala> import org.apache.spark.sql.cassandra._
scala> import org.apache.spark.sql.cassandra.CassandraSQLContext
scala> import org.apache.spark.sql.functions._
scala> import org.apache.spark.sql.types._
scala> import sqlContext.implicits._

scala> // import spark-cassandra-connector
scala> import com.datastax.spark.connector._
scala> import com.datastax.spark.connector.cql.CassandraConnector

scala> // import java data & joda date libraries
scala> import java.util.Calendar
scala> import java.util.TimeZone
scala> import org.joda.time.DateTime
scala> import org.joda.time.DateTimeZone

scala> // create spark sql context
scala> val sqc = new org.apache.spark.sql.SQLContext(sc)
sqc: org.apache.spark.sql.SQLContext = org.apache.spark.sql.SQLContext@5362b064

scala> // create spark cassandra sql context
scala> val cc = new CassandraSQLContext(sc)
cc: org.apache.spark.sql.cassandra.CassandraSQLContext = org.apache.spark.sql.cassandra.CassandraSQLContext@351cc4b5


scala> // prepare SQL statement
scala> var sqlQuery1 = "SELECT department_name, employee_name, employee_id, hire_date, salary FROM cassdemo.employees"
sqlQuery1: String = SELECT department_name, employee_name, employee_id, hire_date, salary FROM cassdemo.employees

scala> var sqlQuery2 = "SELECT department_name, employee_name, salary FROM cassdemo.employees WHERE department_name = 'IT'"
sqlQuery2: String = SELECT department_name, employee_name, salary FROM cassdemo.employees WHERE department_name = 'IT'


scala> // read cassandra table - returns DataFrame
scala> val empsDF = cc.cassandraSql(sqlQuery1)
empsDF: org.apache.spark.sql.DataFrame = [department_name: string, employee_name: string, employee_id: int, hire_date: timestamp, salary: decimal(38,18)]

scala> val itEmpsDF = cc.cassandraSql(sqlQuery2)
itEmpsDF: org.apache.spark.sql.DataFrame = [department_name: string, employee_name: string, salary: decimal(38,18)]

scala> // cassandra timestamp is returned as java.sql.Timestamp


scala> // print schema of the DataFrame
scala> empsDF.printSchema
root
 |-- department_name: string (nullable = true)
 |-- employee_name: string (nullable = true)
 |-- employee_id: integer (nullable = true)
 |-- hire_date: timestamp (nullable = true)
 |-- salary: decimal(38,18) (nullable = true)


scala> // display initial data
scala> empsDF.show(5, false)
+---------------+-------------+-----------+---------------------+-----------------------+
|department_name|employee_name|employee_id|hire_date            |salary                 |
+---------------+-------------+-----------+---------------------+-----------------------+
|Sales          |Sell Queen   |1004       |2016-03-25 00:00:00.0|3405.200000000000000000|
|IT             |John Dow     |1002       |2016-02-02 00:00:00.0|2700.500000000000000000|
|IT             |Scott Tiger  |1001       |2016-01-01 00:00:00.0|2300.000000000000000000|
|Finance        |Larry Emperor|1003       |2016-02-15 00:00:00.0|2250.000000000000000000|
+---------------+-------------+-----------+---------------------+-----------------------+


scala> itEmpsDF.show(5, false)
+---------------+-------------+-----------------------+
|department_name|employee_name|salary                 |
+---------------+-------------+-----------------------+
|IT             |John Dow     |2700.500000000000000000|
|IT             |Scott Tiger  |2300.000000000000000000|
+---------------+-------------+-----------------------+

scala> ////////////////////////////////////////////////////////

scala> // method 1
scala> // transformations on DataFrame returns new DataFrame
scala> // select few columns
scala> empsDF.select("department_name", "employee_name", "salary").show(5, false)
+---------------+-------------+-----------------------+
|department_name|employee_name|salary                 |
+---------------+-------------+-----------------------+
|Sales          |Sell Queen   |3405.200000000000000000|
|IT             |John Dow     |2700.500000000000000000|
|IT             |Scott Tiger  |2300.000000000000000000|
|Finance        |Larry Emperor|2250.000000000000000000|
+---------------+-------------+-----------------------+

scala> // group by and count
scala> empsDF.groupBy("department_name").count.show(5, false)
+---------------+-----+                                                         
|department_name|count|
+---------------+-----+
|Finance        |1    |
|IT             |2    |
|Sales          |1    |
+---------------+-----+

scala> // group by multiple aggregations
scala> empsDF.groupBy("department_name").agg(sum("salary").alias("total_dept_salary"), count("employee_name").alias("no_of_employees")).show(5, false)
+---------------+-----------------------+---------------+                       
|department_name|total_dept_salary      |no_of_employees|
+---------------+-----------------------+---------------+
|Finance        |2250.000000000000000000|1              |
|IT             |5000.500000000000000000|2              |
|Sales          |3405.200000000000000000|1              |
+---------------+-----------------------+---------------+

scala> // where filter & sort
scala> empsDF.where("department_name = 'IT'").select("employee_name", "salary").sort($"salary".asc).show(5, false)
+-------------+-----------------------+
|employee_name|salary                 |
+-------------+-----------------------+
|Scott Tiger  |2300.000000000000000000|
|John Dow     |2700.500000000000000000|
+-------------+-----------------------+

scala> empsDF.where("department_name = 'IT'").select("employee_name", "salary").sort($"salary".desc).show(5, false)
+-------------+-----------------------+
|employee_name|salary                 |
+-------------+-----------------------+
|John Dow     |2700.500000000000000000|
|Scott Tiger  |2300.000000000000000000|
+-------------+-----------------------+

scala> ////////////////////////////////////////////////////////
scala> // method 2
scala> // register DataFrame to access with-in Spark SQL
scala> empsDF.registerTempTable("empsDF_TT")

scala> // aggregation transformation - query Spark SQL temp table
scala> val deptSalariesDF = cc.sql("SELECT department_name, sum(salary) as total_dept_salary, count(employee_name) as no_of_employees FROM empsDF_TT GROUP BY department_name")
deptSalariesDF: org.apache.spark.sql.DataFrame = [department_name: string, total_dept_salary: decimal(38,18), no_of_employees: bigint]

scala> deptSalariesDF.printSchema
root
 |-- department_name: string (nullable = true)
 |-- total_dept_salary: decimal(38,18) (nullable = true)
 |-- no_of_employees: long (nullable = false)

scala> deptSalariesDF.show(5, false)
+---------------+-----------------------+---------------+                       
|department_name|total_dept_salary      |no_of_employees|
+---------------+-----------------------+---------------+
|Finance        |2250.000000000000000000|1              |
|IT             |5000.500000000000000000|2              |
|Sales          |3405.200000000000000000|1              |
+---------------+-----------------------+---------------+


scala> // increment salary by 2%
scala> val empsDF_salinc = cc.sql("SELECT department_name, employee_name, salary+((salary*2)/100) as salary FROM empsDF_TT")
empsDF_salinc: org.apache.spark.sql.DataFrame = [department_name: string, employee_name: string, salary: decimal(38,18)]

scala> empsDF_salinc.printSchema
root
 |-- department_name: string (nullable = true)
 |-- employee_name: string (nullable = true)
 |-- salary: decimal(38,18) (nullable = true)

scala> empsDF_salinc.show(5, false)
+---------------+-------------+-----------------------+
|department_name|employee_name|salary                 |
+---------------+-------------+-----------------------+
|Sales          |Sell Queen   |3473.304000000000000000|
|IT             |John Dow     |2754.510000000000000000|
|IT             |Scott Tiger  |2346.000000000000000000|
|Finance        |Larry Emperor|2295.000000000000000000|
+---------------+-------------+-----------------------+


scala> // save DataFrame to cassandra
scala> // .mode("") : overwrite / append / ignore / error
scala> // .mode("append") in cassandra will be UPSERT
scala> empsDF_salinc.write.cassandraFormat("employees", "cassdemo").mode("append").save()

```

---
