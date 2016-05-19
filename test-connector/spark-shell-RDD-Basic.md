### spark-cassandra-connector using spark-shell - Basic RDD

---

#### start spark-shell along with spark-cassandra-connector jar
$ `spark-shell --jars /u01/cass/spark-cassandra-connector/spark-cassandra-connector-assembly-1.6.0-M2-ef47431-scala-2.10-20160504.jar`

---

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

