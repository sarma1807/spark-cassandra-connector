# DataStax spark-cassandra-connector
### Compiled Assemblies

---

##### download compiled JAR file

---

##### create a soft link to JAR file
```
ln -s ~/spark-cassandra-connector-jars/spark-cassandra-connector-assembly-3.0.0-18-gcb4065b-20210101.jar ~/spark-cassandra-connector-jars/spark-cassandra-connector.jar
```

---

##### ```spark-defaults.conf``` : load JAR file
```
spark.jars   ~/spark-cassandra-connector-jars/spark-cassandra-connector.jar
```

---

##### start ```spark-shell``` with config files :
```
spark-shell -I ~/spark-cassandra-connector-jars/spark-shell-RDD.config
spark-shell -I ~/spark-cassandra-connector-jars/spark-shell-SQL-DS.config
spark-shell -I ~/spark-cassandra-connector-jars/spark-shell-SQL.config
```

---
