#### Official spark-cassandra-connector Package Website : http://spark-packages.org/package/datastax/spark-cassandra-connector

---

#### Starting spark-shell with spark-cassandra-connector package

[cass@metalgear ~]$ `echo $SPARK_HOME`

`/u01/cass/spark-1.6.1-bin-hadoop2.6`


[cass@metalgear ~]$ `$SPARK_HOME/bin/spark-shell --packages datastax:spark-cassandra-connector:1.6.0-M2-s_2.10`

```
Ivy Default Cache set to: /home/cass/.ivy2/cache
The jars for the packages stored in: /home/cass/.ivy2/jars
:: loading settings :: url = jar:file:/u01/cass/spark-1.6.1-bin-hadoop2.6/lib/spark-assembly-1.6.1-hadoop2.6.0.jar!/org/apache/ivy/core/settings/ivysettings.xml
datastax#spark-cassandra-connector added as a dependency
:: resolving dependencies :: org.apache.spark#spark-submit-parent;1.0
	confs: [default]
	found datastax#spark-cassandra-connector;1.6.0-M2-s_2.10 in spark-packages
	found org.apache.cassandra#cassandra-clientutil;3.0.2 in central
	found com.datastax.cassandra#cassandra-driver-core;3.0.0 in central
	found io.netty#netty-handler;4.0.33.Final in central
	found io.netty#netty-buffer;4.0.33.Final in central
	found io.netty#netty-common;4.0.33.Final in central
	found io.netty#netty-transport;4.0.33.Final in central
	found io.netty#netty-codec;4.0.33.Final in central
	found io.dropwizard.metrics#metrics-core;3.1.2 in central
	found org.slf4j#slf4j-api;1.7.7 in central
	found org.apache.commons#commons-lang3;3.3.2 in central
	found com.google.guava#guava;16.0.1 in central
	found org.joda#joda-convert;1.2 in central
	found joda-time#joda-time;2.3 in central
	found com.twitter#jsr166e;1.1.0 in central
	found org.scala-lang#scala-reflect;2.10.5 in central
downloading http://dl.bintray.com/spark-packages/maven/datastax/spark-cassandra-connector/1.6.0-M2-s_2.10/spark-cassandra-connector-1.6.0-M2-s_2.10.jar ...
	[SUCCESSFUL ] datastax#spark-cassandra-connector;1.6.0-M2-s_2.10!spark-cassandra-connector.jar (941ms)
downloading https://repo1.maven.org/maven2/org/apache/cassandra/cassandra-clientutil/3.0.2/cassandra-clientutil-3.0.2.jar ...
	[SUCCESSFUL ] org.apache.cassandra#cassandra-clientutil;3.0.2!cassandra-clientutil.jar (88ms)
downloading https://repo1.maven.org/maven2/com/datastax/cassandra/cassandra-driver-core/3.0.0/cassandra-driver-core-3.0.0.jar ...
	[SUCCESSFUL ] com.datastax.cassandra#cassandra-driver-core;3.0.0!cassandra-driver-core.jar(bundle) (328ms)
downloading https://repo1.maven.org/maven2/org/apache/commons/commons-lang3/3.3.2/commons-lang3-3.3.2.jar ...
	[SUCCESSFUL ] org.apache.commons#commons-lang3;3.3.2!commons-lang3.jar (151ms)
downloading https://repo1.maven.org/maven2/com/google/guava/guava/16.0.1/guava-16.0.1.jar ...
	[SUCCESSFUL ] com.google.guava#guava;16.0.1!guava.jar(bundle) (663ms)
downloading https://repo1.maven.org/maven2/org/joda/joda-convert/1.2/joda-convert-1.2.jar ...
	[SUCCESSFUL ] org.joda#joda-convert;1.2!joda-convert.jar (29ms)
downloading https://repo1.maven.org/maven2/joda-time/joda-time/2.3/joda-time-2.3.jar ...
	[SUCCESSFUL ] joda-time#joda-time;2.3!joda-time.jar (492ms)
downloading https://repo1.maven.org/maven2/com/twitter/jsr166e/1.1.0/jsr166e-1.1.0.jar ...
	[SUCCESSFUL ] com.twitter#jsr166e;1.1.0!jsr166e.jar (41ms)
downloading https://repo1.maven.org/maven2/org/scala-lang/scala-reflect/2.10.5/scala-reflect-2.10.5.jar ...
	[SUCCESSFUL ] org.scala-lang#scala-reflect;2.10.5!scala-reflect.jar (979ms)
downloading https://repo1.maven.org/maven2/io/netty/netty-handler/4.0.33.Final/netty-handler-4.0.33.Final.jar ...
	[SUCCESSFUL ] io.netty#netty-handler;4.0.33.Final!netty-handler.jar (102ms)
downloading https://repo1.maven.org/maven2/io/dropwizard/metrics/metrics-core/3.1.2/metrics-core-3.1.2.jar ...
	[SUCCESSFUL ] io.dropwizard.metrics#metrics-core;3.1.2!metrics-core.jar(bundle) (56ms)
downloading https://repo1.maven.org/maven2/io/netty/netty-buffer/4.0.33.Final/netty-buffer-4.0.33.Final.jar ...
	[SUCCESSFUL ] io.netty#netty-buffer;4.0.33.Final!netty-buffer.jar (101ms)
downloading https://repo1.maven.org/maven2/io/netty/netty-transport/4.0.33.Final/netty-transport-4.0.33.Final.jar ...
	[SUCCESSFUL ] io.netty#netty-transport;4.0.33.Final!netty-transport.jar (141ms)
downloading https://repo1.maven.org/maven2/io/netty/netty-codec/4.0.33.Final/netty-codec-4.0.33.Final.jar ...
	[SUCCESSFUL ] io.netty#netty-codec;4.0.33.Final!netty-codec.jar (61ms)
downloading https://repo1.maven.org/maven2/io/netty/netty-common/4.0.33.Final/netty-common-4.0.33.Final.jar ...
	[SUCCESSFUL ] io.netty#netty-common;4.0.33.Final!netty-common.jar (155ms)
downloading https://repo1.maven.org/maven2/org/slf4j/slf4j-api/1.7.7/slf4j-api-1.7.7.jar ...
	[SUCCESSFUL ] org.slf4j#slf4j-api;1.7.7!slf4j-api.jar (28ms)
:: resolution report :: resolve 6956ms :: artifacts dl 4379ms
	:: modules in use:
	com.datastax.cassandra#cassandra-driver-core;3.0.0 from central in [default]
	com.google.guava#guava;16.0.1 from central in [default]
	com.twitter#jsr166e;1.1.0 from central in [default]
	datastax#spark-cassandra-connector;1.6.0-M2-s_2.10 from spark-packages in [default]
	io.dropwizard.metrics#metrics-core;3.1.2 from central in [default]
	io.netty#netty-buffer;4.0.33.Final from central in [default]
	io.netty#netty-codec;4.0.33.Final from central in [default]
	io.netty#netty-common;4.0.33.Final from central in [default]
	io.netty#netty-handler;4.0.33.Final from central in [default]
	io.netty#netty-transport;4.0.33.Final from central in [default]
	joda-time#joda-time;2.3 from central in [default]
	org.apache.cassandra#cassandra-clientutil;3.0.2 from central in [default]
	org.apache.commons#commons-lang3;3.3.2 from central in [default]
	org.joda#joda-convert;1.2 from central in [default]
	org.scala-lang#scala-reflect;2.10.5 from central in [default]
	org.slf4j#slf4j-api;1.7.7 from central in [default]
	---------------------------------------------------------------------
	|                  |            modules            ||   artifacts   |
	|       conf       | number| search|dwnlded|evicted|| number|dwnlded|
	---------------------------------------------------------------------
	|      default     |   16  |   16  |   16  |   0   ||   16  |   16  |
	---------------------------------------------------------------------
:: retrieving :: org.apache.spark#spark-submit-parent
	confs: [default]
	16 artifacts copied, 0 already retrieved (11532kB/78ms)
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
16/05/13 14:07:48 WARN ObjectStore: Version information not found in metastore. hive.metastore.schema.verification is not enabled so recording the schema version 1.2.0
16/05/13 14:07:48 WARN ObjectStore: Failed to get database default, returning NoSuchObjectException
16/05/13 14:08:41 WARN ObjectStore: Version information not found in metastore. hive.metastore.schema.verification is not enabled so recording the schema version 1.2.0
16/05/13 14:08:42 WARN ObjectStore: Failed to get database default, returning NoSuchObjectException
SQL context available as sqlContext.

scala>
```

---

scala> `sc.jars.foreach(println)`

```
file:/home/cass/.ivy2/jars/datastax_spark-cassandra-connector-1.6.0-M2-s_2.10.jar
file:/home/cass/.ivy2/jars/org.apache.cassandra_cassandra-clientutil-3.0.2.jar
file:/home/cass/.ivy2/jars/com.datastax.cassandra_cassandra-driver-core-3.0.0.jar
file:/home/cass/.ivy2/jars/org.apache.commons_commons-lang3-3.3.2.jar
file:/home/cass/.ivy2/jars/com.google.guava_guava-16.0.1.jar
file:/home/cass/.ivy2/jars/org.joda_joda-convert-1.2.jar
file:/home/cass/.ivy2/jars/joda-time_joda-time-2.3.jar
file:/home/cass/.ivy2/jars/com.twitter_jsr166e-1.1.0.jar
file:/home/cass/.ivy2/jars/org.scala-lang_scala-reflect-2.10.5.jar
file:/home/cass/.ivy2/jars/io.netty_netty-handler-4.0.33.Final.jar
file:/home/cass/.ivy2/jars/io.dropwizard.metrics_metrics-core-3.1.2.jar
file:/home/cass/.ivy2/jars/io.netty_netty-buffer-4.0.33.Final.jar
file:/home/cass/.ivy2/jars/io.netty_netty-transport-4.0.33.Final.jar
file:/home/cass/.ivy2/jars/io.netty_netty-codec-4.0.33.Final.jar
file:/home/cass/.ivy2/jars/io.netty_netty-common-4.0.33.Final.jar
file:/home/cass/.ivy2/jars/org.slf4j_slf4j-api-1.7.7.jar
```

---
