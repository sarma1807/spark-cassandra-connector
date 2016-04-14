#### Assemble spark-cassandra-connector for Scala 2.10

[cass@metalgear ~]$ `mkdir -p /home/cass/work`

[cass@metalgear ~]$ `cd /home/cass/work`

[cass@metalgear work]$ `which git` <br>
`/usr/bin/git`

---

#### download spark-cassandra-connector from github

[cass@metalgear work]$ `git clone https://github.com/datastax/spark-cassandra-connector.git`

Output :
```
Cloning into 'spark-cassandra-connector'...
remote: Counting objects: 25416, done.
remote: Compressing objects: 100% (162/162), done.
remote: Total 25416 (delta 49), reused 0 (delta 0), pack-reused 25198
Receiving objects: 100% (25416/25416), 6.42 MiB | 2.64 MiB/s, done.
Resolving deltas: 100% (10843/10843), done.
```

[cass@metalgear work]$ `cd /home/cass/work/spark-cassandra-connector`

[cass@metalgear spark-cassandra-connector]$ `find $PWD -iname *.jar`

##### Note that, I don't have any pre-built JARs

---

#### Assemble spark-cassandra-connector for Scala 2.10

[cass@metalgear spark-cassandra-connector]$ `pwd` <br>
`/home/cass/work/spark-cassandra-connector`

[cass@metalgear spark-cassandra-connector]$ `./sbt/sbt assembly`

(This command might take nearly 10 minutes)
Output :
```
Attempting to fetch sbt
Launching sbt from sbt/sbt-launch-0.13.8.jar
Java HotSpot(TM) 64-Bit Server VM warning: ignoring option MaxPermSize=350m; support was removed in 8.0
[info] Loading project definition from /home/cass/work/spark-cassandra-connector/project
[info] Updating {file:/home/cass/work/spark-cassandra-connector/project/}spark-cassandra-connector-build...
[info] Resolving org.fusesource.jansi#jansi;1.4 ...
[info] Done updating.
[info] Compiling 6 Scala sources to /home/cass/work/spark-cassandra-connector/project/target/scala-2.10/sbt-0.13/classes...
[warn] there were 15 feature warning(s); re-run with -feature for details
[warn] one warning found
Using releases: https://oss.sonatype.org/service/local/staging/deploy/maven2 for releases
Using snapshots: https://oss.sonatype.org/content/repositories/snapshots for snapshots

  Scala: 2.10.5 [To build against Scala 2.11 use '-Dscala-2.11=true']
  Scala Binary: 2.10
  Java: target=1.7 user=1.8.0_74
  Cassandra version for testing: 3.0.2 [can be overridden by specifying '-Dtest.cassandra.version=<version>']
        
[info] Set current project to root (in build file:/home/cass/work/spark-cassandra-connector/)
[warn] Credentials file /home/cass/.ivy2/.credentials does not exist
[info] Updating {file:/home/cass/work/spark-cassandra-connector/}spark-cassandra-connector-embedded...
[warn] Credentials file /home/cass/.ivy2/.credentials does not exist
[warn] Credentials file /home/cass/.ivy2/.credentials does not exist
[info] Done updating.
[info] Updating {file:/home/cass/work/spark-cassandra-connector/}spark-cassandra-connector...
[info] Done updating.
[info] Compiling 15 Scala sources to /home/cass/work/spark-cassandra-connector/spark-cassandra-connector-embedded/target/scala-2.10/classes...
[info] Compiling 159 Scala sources and 15 Java sources to /home/cass/work/spark-cassandra-connector/spark-cassandra-connector/target/scala-2.10/classes...
[info] Compiling 46 Scala sources and 14 Java sources to /home/cass/work/spark-cassandra-connector/spark-cassandra-connector/target/scala-2.10/test-classes...
[info] Including: cassandra-clientutil-3.0.2.jar
[info] Including: netty-buffer-4.0.33.Final.jar
[info] Including: slf4j-api-1.7.7.jar
[info] Including: guava-16.0.1.jar
[info] Including: netty-handler-4.0.33.Final.jar
[info] Including: netty-common-4.0.33.Final.jar
[info] Including: netty-codec-4.0.33.Final.jar
[info] Including: cassandra-driver-core-3.0.0.jar
[info] Including: netty-transport-4.0.33.Final.jar
[info] Including: commons-lang3-3.3.2.jar
[info] Including: joda-convert-1.2.jar
[info] Including: jsr166e-1.1.0.jar
[info] Including: joda-time-2.3.jar
[info] Including: metrics-core-3.1.2.jar
[info] CqlWhereParserTest:
[info] CqlWhereParser
[info] - should parse 'and' operations (96 milliseconds)
[info] - should parse equality predicates (4 milliseconds)
[info] - should parse range predicates (8 milliseconds)
[info] - should parse IN predicates (9 milliseconds)
[info] - should parse quoted names (6 milliseconds)
[info] - should return lowercase names (5 milliseconds)
[info] - should parse strings (10 milliseconds)
[info] - should distinguish '?' from ? (4 milliseconds)
[info] - should accept >= (2 milliseconds)
[info] - should accept ? (3 milliseconds)
[info] - should accept name with quotes and other special symbols (2 milliseconds)
[info] - should accept param with quotes and other special symbols (4 milliseconds)
[info] - should accept uuid param (4 milliseconds)
[info] - should accept float param (2 milliseconds)
[info] - should parse case insensitive 'aNd' operations (3 milliseconds)
[info] - should parse case insensitive 'iN' operations (1 millisecond)
[info] - should parse case insensitive 'IN' operations ? (2 milliseconds)
[info] ColumnTypeSpec:
[info] A ColumnType companion object
[info] - should throw InvalidArgumentException if given unsupported type (843 milliseconds)
[info]   should allow to obtain a proper ColumnType
[info]   - when given a Boolean should return BooleanType (15 milliseconds)
[info]   - when given a java.lang.Boolean should return BooleanType (3 milliseconds)
[info]   - when given an Int should return IntType (1 millisecond)
[info]   - when given an java.lang.Integer should return IntType (1 millisecond)
[info]   - when given a Long should return BigIntType (6 milliseconds)
[info]   - when given a java.lang.Long should return BigIntType (1 millisecond)
[info]   - when given a Float should return FloatType (1 millisecond)
[info]   - when given a java.lang.Float should return FloatType (1 millisecond)
[info]   - when given a Double should return DoubleType (2 milliseconds)
[info]   - when given a java.lang.Double should return DoubleType (1 millisecond)
[info]   - when given a String should return VarcharType (4 milliseconds)
[info]   - when given a java.lang.Short should return a SmallIntType (2 milliseconds)
[info]   - when given a Short should return a SmallIntType (1 millisecond)
[info]   - when given a Byte should return a TinyIntType (3 milliseconds)
[info]   - when given a java.lang.Byte should return a TinyIntType (1 millisecond)
[info]   - when given a java.util.Date should return TimestampType (2 milliseconds)
[info]   - when given a java.sql.Date should return TimestampType (3 milliseconds)
[info]   - when given a org.joda.time.DateTime should return TimestampType (3 milliseconds)
[info]   - when given a ByteBuffer should return BlobType (7 milliseconds)
[info]   - when given an Array[Byte] should return BlobType (3 milliseconds)
[info]   - when given an UUID should return UUIDType (4 milliseconds)
[info]   - when given a List[String] should return ListType(VarcharType) (60 milliseconds)
[info]   - when given a Set[InetAddress] should return SetType(InetType) (50 milliseconds)
[info]   - when given a Map[Int, Date] should return MapType(IntType, TimestampType) (11 milliseconds)
[info]   - when given an Option[Int] should return IntType (14 milliseconds)
[info]   - when given an Option[Vector[Int]] should return ListType(IntType) (34 milliseconds)
[info]   should allow to obtain a proper ColumnType from Spark SQL type
[info]   - when given a ByteType should return IntType (224 milliseconds)
[info]   - when given a ShortType should return IntType (9 milliseconds)
[info]   - when given a BooleanType should return BooleanType (70 milliseconds)
[info]   - when given an IntegerType should return IntType (0 milliseconds)
[info]   - when given a LongType should return BigIntType (1 millisecond)
[info]   - when given a FloatType should return FloatType (1 millisecond)
[info]   - when given a DoubleType should return DoubleType (1 millisecond)
[info]   - when given a DecimalType should return DecimalType (33 milliseconds)
[info]   - when given a StringType should return VarcharType (1 millisecond)
[info]   - when given a TimestampType should return TimestampType (0 milliseconds)
[info]   - when given a SparkSqlDateType should return DateType (1 millisecond)
[info]   - when given a BinaryType should return BlobType (0 milliseconds)
[info]   - when given a ArrayType(String) should return ListType(VarcharType) (3 milliseconds)
[info]   - when given a MapType(IntegerType, SparkSqlDateType) should return MapType(IntType, DateTypeType) (2 milliseconds)
[info] BufferedIterator2Spec:
[info] BufferedIterator
[info] - should return the same items as the standard Iterator (5 milliseconds)
[info] - should be convertible to a Seq (18 milliseconds)
[info] - should wrap an empty iterator (1 millisecond)
[info] - should offer the head element without consuming the underlying iterator (1 millisecond)
[info] - should offer takeWhile that consumes only the elements matching the predicate (5 milliseconds)
[info] - should offer appendWhile that copies elements to ArrayBuffer and consumes only the elements matching the predicate (2 milliseconds)
[info] - should throw NoSuchElementException if trying to get next() element that doesn't exist (5 milliseconds)
[info] BucketingRangeIndexSpec:
[info] BucketingRangeIndex
[info] - should find ranges containing given point when ranges do not overlap (583 milliseconds)
[info] - should find ranges containing given point when ranges do overlap (667 milliseconds)
[info] - should find proper ranges when they wrap around (0 milliseconds)
[info] LongTokenBucketing
[info] - should respect the required bucket range (76 milliseconds)
[info] - should be weakly monotonic (35 milliseconds)
[info] BigIntTokenBucketing
[info] - should respect the required bucket range (11 milliseconds)
[info] - should be weakly monotonic (11 milliseconds)
[info] Murmur3Bucketing
[info] - should map all tokens to a single wrapping range (251 milliseconds)
[info] RandomBucketing
[info] - should map all tokens to a single wrapping range (123 milliseconds)
[info] RetryDelayConfSpec:
[info] ConstantDelay
[info] - should return the same delay regardless of the retry number (15 milliseconds)
[info] LinearDelay
[info] - should return the calculated delay for different retry numbers (3 milliseconds)
[info] ExponentialDelay
[info] - should return the calculated delay for different retry numbers (5 milliseconds)
[info] InputMetricsUpdaterSpec:
[info] InputMetricsUpdater
[info] - should initialize task metrics properly when they are empty (449 milliseconds)
[info] - should create updater which uses task metrics (208 milliseconds)
[info] - should create updater which does not use task metrics (14 milliseconds)
[info] - should create updater which uses Codahale metrics (54 milliseconds)
[info] - should create updater which doesn't use Codahale metrics (2 milliseconds)
[info] RateLimiterSpec:
[info] RateLimiter
[info] - should not cause delays if rate is not exceeded (78 milliseconds)
[info] - should sleep to not exceed the target rate (2 milliseconds)
[info] - should sleep and leak properly with different Rates (13 milliseconds)
[info] RandomPartitionerTokenFactorySpec:
[info] RandomPartitionerTokenFactory
[info] - should create a token from String (1 millisecond)
[info] - should create a String representation of a token (1 millisecond)
[info] - should calculate the distance between tokens if right > left (0 milliseconds)
[info] - should calculate the distance between tokens if right <= left (1 millisecond)
[info] - should calculate ring fraction (1 millisecond)
[info] WriteConfTest:
[info] WriteConf
[info] - should be configured with proper defaults (11 milliseconds)
[info] - should allow setting the rate limit as a decimal (14 milliseconds)
[info] - should allow to set consistency level (10 milliseconds)
[info] - should allow to set parallelism level (8 milliseconds)
[info] - should allow to set batch size in bytes (1 millisecond)
[info] - should allow to set batch size in bytes when rows are set to auto (2 milliseconds)
[info] - should allow to set batch size in rows (5 milliseconds)
[info] - should allow to set batch level (3 milliseconds)
[info] - should allow to set batch buffer size (4 milliseconds)
Using Spark's default log4j profile: org/apache/spark/log4j-defaults.properties
[info] AnyObjectFactoryTest:
[info] AnyObjectFactory
[info]   when instantiated for a bean class with a single, no-args constructor
[info]   - should create an instance of that class with newInstance (2 milliseconds)
[info]   - should return 0 with argCount (1 millisecond)
[info]   - should return empty collection with constructorParamTypes (35 milliseconds)
[info]   - should return that class with javaClass (0 milliseconds)
[info]   when instantiated for a bean class with multiple constructors which include no-args constructor
[info]   - should create an instance of that class with newInstance (0 milliseconds)
[info]   - should return that class with javaClass (0 milliseconds)
[info]   when instantiated for an inner Java class
[info]   - should create an instance of that class with newInstance (2 milliseconds)
[info]   - should return that class with javaClass (0 milliseconds)
[info]   when instantiated for a deeply nested inner Java class
[info]   - should create an instance of that class with newInstance (10 milliseconds)
[info]   - should return that class with javaClass (1 millisecond)
[info]   when tried to be instantiated for an unsupported bean class
[info]   - should throw NoSuchMethodException if class does not have suitable constructor (3 milliseconds)
[info]   when instantiated for a Scala case class with 2 args constructor
[info]   - should create an instance of that class with newInstance (0 milliseconds)
[info]   - should return 2 with argCount because the only constructor of this case class has two args (0 milliseconds)
[info]   - should return collection of {Int, String} types with constructorParamTypes (9 milliseconds)
[info]   - should return that class with javaClass (1 millisecond)
[info]   when instantiated for a Scala case class with 2 args constructor which is defined inside an object
[info]   - should create an instance of that class with newInstance (1 millisecond)
[info]   - should return 2 with argCount because the only constructor of this case class has two args (0 milliseconds)
[info]   - should return collection of {Int, String} types with constructorParamTypes (1 millisecond)
[info]   - should return that class with javaClass (0 milliseconds)
[info]   when instantiated for a Scala class with 2 args constructor
[info]   - should create an instance of that class with newInstance (1 millisecond)
[info]   - should return 2 with argCount because the only constructor of this class has 2 args (0 milliseconds)
[info]   - should return collection of {Int, String} types with constructorParamTypes (1 millisecond)
[info]   - should return that class with javaClass (1 millisecond)
[info]   when instantiated for a Scala class with 2 args constructor and without fields
[info]   - should create an instance of that class with newInstance (0 milliseconds)
[info]   - should return 2 with argCount because the only constructor of this class has 2 args (1 millisecond)
[info]   - should return collection of {Int, String} types with constructorParamTypes (2 milliseconds)
[info]   - should return that class with javaClass (1 millisecond)
[info]   when instantiated for a Scala class with multiple constructors
[info]   - should create an instance of that class with newInstance (1 millisecond)
[info]   - should return that class with javaClass (0 milliseconds)
[info]   when instantiated for an inner Scala class with 2 args constructor
[info]   - should create an instance of that class with newInstance (1 millisecond)
[info]   - should return 2 with argCount (0 milliseconds)
[info]   - should return collection of {Int, String} types with constructorParamTypes (2 milliseconds)
[info]   - should return that class with javaClass (0 milliseconds)
[info]   when instantiated for a deeply nested inner Scala class
[info]   - should create an instance of that class with newInstance (1 millisecond)
[info]   - should return that class with javaClass (1 millisecond)
[info]   when serialized
[info]   - should allow to be deserialized and reused (12 milliseconds)
[info] GettableDataToMappedTypeConverterSpec:
[info] GettableDataToMappedTypeConverter
[info] - should be Serializable (256 milliseconds)
[info] - should convert a CassandraRow to a case class object (26 milliseconds)
[info] - should convert a CassandraRow to a case class object after being serialized/deserialized (20 milliseconds)
[info] - should convert a CassandraRow to a tuple (48 milliseconds)
[info] - should convert a CassandraRow to a tuple in reversed order (6 milliseconds)
[info] - should convert a CassandraRow to a tuple with a subset of columns (9 milliseconds)
[info] - should convert a UDTValue to a case class object (13 milliseconds)
[info] - should convert a TupleValue to a Scala tuple (10 milliseconds)
[info] - should allow for nesting UDTValues inside of TupleValues (21 milliseconds)
[info] - should allow for nesting TupleValues inside of UDTValues (24 milliseconds)
[info] - should convert nulls to Scala Nones (20 milliseconds)
[info] - should convert using custom column aliases (16 milliseconds)
[info] - should set property values with setters (17 milliseconds)
[info] - should apply proper type conversions for columns (13 milliseconds)
[info] - should convert a CassandraRow with a UDTValue into nested case class objects (22 milliseconds)
[info] - should convert a CassandraRow with a UDTValue into a case class with a nested tuple (17 milliseconds)
[info] - should convert a CassandraRow with an optional UDTValue (25 milliseconds)
[info] - should convert a CassandraRow with a list of UDTValues (27 milliseconds)
[info] - should convert a CassandraRow with a set of UDTValues (22 milliseconds)
[info] - should convert a CassandraRow with a collection of UDTValues (25 milliseconds)
[info] - should convert a CassandraRow with a collection of tuples (16 milliseconds)
[info] - should convert a CassandraRow to a JavaBean (12 milliseconds)
[info] - should convert a CassandraRow with UDTs to nested JavaBeans (27 milliseconds)
[info] - should throw a meaningful exception when a column type is not supported (19 milliseconds)
[info] - should throw a meaningful exception when a column value fails to be converted (5 milliseconds)
[info] - should throw NPE with a meaningful message when a column value is null (6 milliseconds)
[info] - should throw NPE when trying to access its targetTypeTag after serialization/deserialization (10 milliseconds)
[info] ConfigCheckSpec:
[info] ConfigCheck
[info] - should throw an exception when the configuration contains a invalid spark.cassandra prop (45 milliseconds)
[info] - should suggest alternatives if you have a slight misspelling (10 milliseconds)
[info] - should suggest alternatives if you miss a word (8 milliseconds)
[info] - should not throw an exception if you have a random variable not in the spark.cassandra space (4 milliseconds)
[info] - should not list all options as suggestions (8 milliseconds)
[info] - should not give suggestions when the variable is very strange (3 milliseconds)
[info] - should accept custom ConnectionFactory properties (15 milliseconds)
[info] - should accept custom AuthConfFactory properties (5 milliseconds)
[info] PredicatePushDownSpec:
[info] BasicCassandraPredicatePushDown
[info] - should push down all equality predicates restricting partition key columns (17 milliseconds)
[info] - should not push down a partition key predicate for a part of the partition key (5 milliseconds)
[info] - should not push down a range partition key predicate (1 millisecond)
[info] - should push down an IN partition key predicate on the last partition key column (1 millisecond)
[info] - should not push down an IN partition key predicate on the non-last partition key column (1 millisecond)
[info] - should push down the first clustering column predicate (3 milliseconds)
[info] - should push down the first and the second clustering column predicate (1 millisecond)
[info] - should push down restrictions on only the initial clustering columns (1 millisecond)
[info] - should push down only one range predicate restricting the first clustering column, if there are more range predicates on different clustering columns (0 milliseconds)
[info] - should push down multiple range predicates for the same clustering column (1 millisecond)
[info] - should push down clustering column predicates when the last clustering column is restricted by IN (2 milliseconds)
[info] - should stop pushing down clustering column predicates on the first range predicate (1 millisecond)
[info] - should not push down IN restriction on non-last column (2 milliseconds)
[info] - should not push down any clustering column predicates, if the first clustering column is missing (1 millisecond)
[info] - should push down equality predicates on regular indexed columns (1 millisecond)
[info] - should not push down range predicates on regular indexed columns (1 millisecond)
[info] - should not push down IN predicates on regular indexed columns (1 millisecond)
[info] - should push down predicates on regular non-indexed and indexed columns (1 millisecond)
[info] - should not push down predicates on regular non-indexed columns if indexed ones are not included (1 millisecond)
[info] - should prefer to push down equality predicates over range predicates (1 millisecond)
[info] - should not push down unsupported predicates (1 millisecond)
[info] Murmur3TokenFactorySpec:
[info] Murmur3TokenFactory
[info] - should create a token from String (0 milliseconds)
[info] - should create a String representation of a token (0 milliseconds)
[info] - should calculate the distance between tokens if right > left (0 milliseconds)
[info] - should calculate the distance between tokens if right <= left (1 millisecond)
[info] - should calculate ring fraction (1 millisecond)
[info] ReflectionUtilSpec:
[info] ReflectionUtil.findGlobalObject
[info] - should be able to find DefaultConnectionFactory (3 milliseconds)
[info] - should be able to find a global object in a multi-threaded context (15 milliseconds)
[info] - should be able to instantiate a singleton object based on Java class name (140 milliseconds)
[info] - should cache Java class instances (3 milliseconds)
[info] - should throw IllegalArgumentException when asked for a Scala object of wrong type (8 milliseconds)
[info] - should throw IllegalArgumentException when asked for class instance of wrong type (12 milliseconds)
[info] - should throw IllegalArgumentException when object does not exist (4 milliseconds)
[info] ReflectionUtil.constructorParams
[info] - should return proper constructor param names and types for a class with a single constructor (19 milliseconds)
[info] - should return main constructor's param names and types for a class with multiple constructors (2 milliseconds)
[info] ReflectionUtil.getters
[info] - should return getter names and types (3 milliseconds)
[info] ReflectionUtil.setters
[info] - should return setter names and types (4 milliseconds)
[info] ReflectionUtil.methodParamTypes
[info] - should return method param types (2 milliseconds)
[info] - should return proper method param types for generic type (2 milliseconds)
[info] - should throw IllegalArgumentException if the requested method is missing (6 milliseconds)
[info] ConsolidateSettingsSpec:
[info] - should use SparkConf settings by default (36 milliseconds)
[info] - should override SparkConf settings by SQLContext settings (3 milliseconds)
[info] - should override global SQLContext settings by cluster level settings (5 milliseconds)
[info] - should override cluster level SQLContext settings by keyspace level settings (3 milliseconds)
[info] - should override keyspace level SQLContext settings by table level settings (3 milliseconds)
[info] TokenRangeSpec:
[info] LongRanges 
[info] - should contain tokens with easy no wrapping bounds (11 milliseconds)
[info] - should contain tokens with wrapping bounds in (8 milliseconds)
[info] BigRanges 
[info] - should contain tokens with easy no wrapping bounds (11 milliseconds)
[info] - should contain tokens with wrapping bounds in (3 milliseconds)
[info] TableDefSpec:
[info] A TableDef#cql method
[info]   should produce valid CQL
[info]   - when it contains no clustering columns (4 milliseconds)
[info]   - when it contains clustering columns (1 millisecond)
[info]   - when it contains compound partition key and multiple clustering columns (1 millisecond)
[info]   - when it contains a column of a collection type (1 millisecond)
[info] CassandraRowTest:
[info] - basicAccessTest (5 milliseconds)
[info] - nullAccessTest (1 millisecond)
[info] - NoneAccessTest (0 milliseconds)
[info] - nullToStringTest (1 millisecond)
[info] - nonExistentColumnAccessTest (1 millisecond)
[info] - primitiveConversionTest (105 milliseconds)
[info] - collectionConversionTest (16 milliseconds)
[info] - serializationTest (5 milliseconds)
[info] WriteOptionTest:
[info] TTLOption
[info] - should properly create constant write option with duration in seconds (3 milliseconds)
[info] - should properly create constant write option with scala.concurrent.duration.Duration (1 millisecond)
[info] - should properly create constant write option with scala.concurrent.duration.Duration.Infinite (1 millisecond)
[info] - should properly create constant write option with org.joda.time.Duration (3 milliseconds)
[info] - should properly create infinite duration (1 millisecond)
[info] - should properly create per-row duration placeholder (0 milliseconds)
[info] TimestampOption
[info] - should properly create constant write option with timestamp in microseconds (1 millisecond)
[info] - should properly create constant write option with DateTime (1 millisecond)
[info] - should properly create constant write option with Date (1 millisecond)
[info] MappedToGettableDataConverterSpec:
[info] MappedToGettableDataConverter
[info] - should be Serializable (44 milliseconds)
[info] - should convert a simple case class to a CassandraRow (10 milliseconds)
[info] - should convert a simple case class to a UDTValue (6 milliseconds)
[info] - should convert a Scala tuple to a TupleValue (19 milliseconds)
[info] - should convert nested classes (14 milliseconds)
[info] - should convert a nested UDTValue to a UDTValue (15 milliseconds)
[info] - should convert user defined types nested in collections (17 milliseconds)
[info] - should convert user defined types nested in tuples (8 milliseconds)
[info] - should convert tuples nested in user defined types (10 milliseconds)
[info] - should convert nulls to Scala Nones (6 milliseconds)
[info] - should convert None case class to null (11 milliseconds)
[info] - should convert Some case class to UDT (8 milliseconds)
[info] - should convert using custom column aliases (7 milliseconds)
[info] - should convert a java bean to a CassandraRow (8 milliseconds)
[info] - should convert nested JavaBeans (5 milliseconds)
[info] - should convert commons-lang3 Pairs to TupleValues (20 milliseconds)
[info] - should convert commons-lang3 Triples to TupleValues (15 milliseconds)
[info] - should throw a meaningful exception when a column has an incorrect type (12 milliseconds)
[info] - should throw a meaningful exception when a tuple field has an incorrect number of components (7 milliseconds)
[info] - should work after serialization/deserialization (8 milliseconds)
[info] ColumnSelectorSpec:
[info] A ColumnSelector#selectFrom method
[info] - should return all columns (6 milliseconds)
[info] - should return partition key columns (2 milliseconds)
[info] - should return some columns (6 milliseconds)
[info] - should return selections with function calls (4 milliseconds)
[info] - should throw a NoSuchElementException when selected column name is invalid (1 millisecond)
[info] - should throw a NoSuchElementException when a function call has a missing column as an actual parameter (3 milliseconds)
[info] ColumnRefSpec:
[info] A FunctionCallRef should
[info] - should generate its equivalent CQL code for: f() (1 millisecond)
[info] - should generate its equivalent CQL code for: f(3) (1 millisecond)
[info] - should generate its equivalent CQL code for: f("col01") (1 millisecond)
[info] - should generate its equivalent CQL code for: f("col01","col02") (0 milliseconds)
[info] - should generate its equivalent CQL code for: f("col01",1,"hello") (0 milliseconds)
[info] - should generate its equivalent CQL code for: g("col01",f("col02",1,"hello")) (1 millisecond)
[info] - should be able to provide a list of columns used as actual parameters by: f() (1 millisecond)
[info] - should be able to provide a list of columns used as actual parameters by: f(3) (1 millisecond)
[info] - should be able to provide a list of columns used as actual parameters by: f("col01") (1 millisecond)
[info] - should be able to provide a list of columns used as actual parameters by: f("col01","col02") (1 millisecond)
[info] - should be able to provide a list of columns used as actual parameters by: f("col01",1,"hello") (1 millisecond)
[info] - should be able to provide a list of columns used as actual parameters by: g("col01",f("col02",1,"hello")) (0 milliseconds)
[info] SpanningIteratorSpec:
[info] SpanningIterator
[info] - should group an empty collection (4 milliseconds)
[info] - should group a sequence of elements with the same key into a single item and should preserve order (2 milliseconds)
[info] - should group a sequence of elements with distinct keys the same number of groups (5 milliseconds)
[info] - should group a sequence of elements with two keys into two groups (2 milliseconds)
[info] - should be lazy and work with infinite streams (9 milliseconds)
[info] CassandraConnectorConfSpec:
[info] - should be serializable (97 milliseconds)
[info] - should match a conf with the same settings (2 milliseconds)
[info] - should resolve default SSL settings correctly (12 milliseconds)
[info] - should resolve provided SSL settings correctly (2 milliseconds)
[info] - should resolve default retry delay settings correctly (1 millisecond)
[info] - should resolve constant retry delay settings (3 milliseconds)
[info] - should resolve linear retry delay settings (3 milliseconds)
[info] - should resolve exponential retry delay settings (3 milliseconds)
[info] PriorityHashMapSpec:
[info] A PriorityHashMap
[info] - should support adding elements (simple) (3 milliseconds)
[info] - should support adding elements ascending by value (22 milliseconds)
[info] - should support adding elements descending by value (6 milliseconds)
[info] - should support adding elements in random order of values (10 milliseconds)
[info] - should support adding elements in random order of values and keys (13 milliseconds)
[info] - should support removing elements in ascending order (16 milliseconds)
[info] - should support removing elements in descending order (14 milliseconds)
[info] - should support removing elements in random order from a sorted map (12 milliseconds)
[info] - should support removing elements from a randomly created map in random order (13 milliseconds)
[info] - should allow to heapsort an array of integers (26 milliseconds)
[info] - should allow to update item priority (21 milliseconds)
[info] - should be able to store multiple items with the same priority (2 milliseconds)
[info] - should return false when removing a non-existing key (2 milliseconds)
[info] - should have capacity rounded up to the nearest power of two (0 milliseconds)
[info] - should throw NoSuchElement exception if requested a head of empty map (5 milliseconds)
[info] - should throw NoSuchElement exception if requested a non-existing key (4 milliseconds)
[info] - should throw IllegalStateException exception if trying to exceed allowed capacity (6 milliseconds)
[info] OutputMetricsUpdaterSpec:
[info] OutputMetricsUpdater
[info] - should initialize task metrics properly when they are empty (15 milliseconds)
[info] - should initialize task metrics properly when they are defined (4 milliseconds)
[info] - should create updater which uses task metrics (5 milliseconds)
[info] - should create updater which does not use task metrics (4 milliseconds)
[info] - should create updater which uses Codahale metrics (5 milliseconds)
[info] - should create updater which doesn't use Codahale metrics (2 milliseconds)
[info] - should work correctly with multiple threads (1 second, 46 milliseconds)
[info] Test run started
[info] Test com.datastax.spark.connector.rdd.partitioner.TokenRangeClustererTest.testTrivialClustering started
[info] Test com.datastax.spark.connector.rdd.partitioner.TokenRangeClustererTest.testMultipleEndpoints started
[info] Test com.datastax.spark.connector.rdd.partitioner.TokenRangeClustererTest.testEmpty started
[info] Test com.datastax.spark.connector.rdd.partitioner.TokenRangeClustererTest.testTooLargeRanges started
[info] Test com.datastax.spark.connector.rdd.partitioner.TokenRangeClustererTest.testMaxClusterSize started
[info] Test com.datastax.spark.connector.rdd.partitioner.TokenRangeClustererTest.testSplitByHost started
[info] Test com.datastax.spark.connector.rdd.partitioner.TokenRangeClustererTest.testSplitByCount started
[info] Test run finished: 0 failed, 0 ignored, 7 total, 0.037s
[info] Test run started
[info] Test com.datastax.spark.connector.types.CanBuildFromTest.testBuild started
[info] Test com.datastax.spark.connector.types.CanBuildFromTest.testSerializeAndBuild started
[info] Test com.datastax.spark.connector.types.CanBuildFromTest.testSerializeAndBuildWithOrdering started
[info] Test run finished: 0 failed, 0 ignored, 3 total, 0.013s
[info] Test run started
[info] Test com.datastax.spark.connector.writer.DefaultRowWriterTest.testTypeConversionsInUDTValuesAreApplied started
[info] Test com.datastax.spark.connector.writer.DefaultRowWriterTest.testTypeConversionsAreApplied started
[info] Test com.datastax.spark.connector.writer.DefaultRowWriterTest.testSerializability started
[info] Test com.datastax.spark.connector.writer.DefaultRowWriterTest.testCustomTypeConvertersAreUsed started
[info] Test run finished: 0 failed, 0 ignored, 4 total, 0.077s
[info] Test run started
[info] Test com.datastax.spark.connector.mapper.DefaultColumnMapperTest.testSetters1 started
[info] Test com.datastax.spark.connector.mapper.DefaultColumnMapperTest.testSetters2 started
[info] Test com.datastax.spark.connector.mapper.DefaultColumnMapperTest.columnNameOverrideConstructor started
[info] Test com.datastax.spark.connector.mapper.DefaultColumnMapperTest.testGetters1 started
[info] Test com.datastax.spark.connector.mapper.DefaultColumnMapperTest.testGetters2 started
[info] Test com.datastax.spark.connector.mapper.DefaultColumnMapperTest.testWorkWithAliasesAndHonorOverrides started
[info] Test com.datastax.spark.connector.mapper.DefaultColumnMapperTest.columnNameOverrideGetters started
[info] Test com.datastax.spark.connector.mapper.DefaultColumnMapperTest.testNotEnoughPropertiesForWriting started
[info] Test com.datastax.spark.connector.mapper.DefaultColumnMapperTest.testNewTableForClassWithVars started
[info] Test com.datastax.spark.connector.mapper.DefaultColumnMapperTest.testNewTableForEmptyClass started
[info] Test com.datastax.spark.connector.mapper.DefaultColumnMapperTest.testConstructorParams1 started
[info] Test com.datastax.spark.connector.mapper.DefaultColumnMapperTest.testConstructorParams2 started
[info] Test com.datastax.spark.connector.mapper.DefaultColumnMapperTest.testNotEnoughColumnsSelectedForReading started
[info] Test com.datastax.spark.connector.mapper.DefaultColumnMapperTest.testImplicit started
[info] Test com.datastax.spark.connector.mapper.DefaultColumnMapperTest.columnNameOverrideSetters started
[info] Test com.datastax.spark.connector.mapper.DefaultColumnMapperTest.testNewTableForClassWithUnsupportedPropertyType started
[info] Test com.datastax.spark.connector.mapper.DefaultColumnMapperTest.testWorkWithAliases started
[info] Test com.datastax.spark.connector.mapper.DefaultColumnMapperTest.testNewTableForCaseClass started
[info] Test run finished: 0 failed, 0 ignored, 18 total, 0.073s
[info] Test run started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testJavaDouble started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testInetAddress started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testSerializeMapConverter started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testJavaInteger started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testChainedConverters started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testTreeMap started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testTreeSet started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testInt started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testMap started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testSet started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testByteArray started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testTimeType started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testBigDecimal started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testFloat started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testDate started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testList started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testLong started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testPair started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testUUID started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testTypeAliases started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testJodaTime started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testCalendar1 started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testCalendar2 started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testLocalDate started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testJavaBigDecimal started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testBoolean started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testJavaFloat started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testUnsupportedType started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testRegisterCustomConverterExtension started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testJavaBigInteger started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testJavaList started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testJavaLong started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testCassandraOption started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testJavaBoolean started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testRegisterCustomConverter started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testSerializeCollectionConverter started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testCassandraOptionToNull started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testBigInt started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testChainedConverterSerializability started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testDouble started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testJavaHashMap started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testJavaHashSet started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testOption started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testString started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testTriple started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testOptionToNullConverter started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testJavaArrayList started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testSqlDate started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testJavaMap started
[info] Test com.datastax.spark.connector.types.TypeConverterTest.testJavaSet started
[info] Test run finished: 0 failed, 0 ignored, 50 total, 0.239s
[info] Test run started
[info] Test com.datastax.spark.connector.writer.PropertyExtractorTest.testSimpleExtraction started
[info] Test com.datastax.spark.connector.writer.PropertyExtractorTest.testWrongPropertyName started
[info] Test com.datastax.spark.connector.writer.PropertyExtractorTest.testAvailableProperties started
[info] Test run finished: 0 failed, 0 ignored, 3 total, 0.007s
[info] Test run started
[info] Test com.datastax.spark.connector.mapper.DataFrameColumnMapperTest.testNewTable started
[info] Test run finished: 0 failed, 0 ignored, 1 total, 0.013s
[info] Test run started
[info] Test com.datastax.spark.connector.japi.rdd.CassandraJoinJavaRDDTest.testOn started
[info] Test run finished: 0 failed, 0 ignored, 1 total, 0.147s
[info] Test run started
[info] Test com.datastax.spark.connector.japi.SparkContextJavaFunctionsTest.testReadConfPopulating started
[info] Test run finished: 0 failed, 0 ignored, 1 total, 0.197s
[info] Test run started
[info] Test com.datastax.spark.connector.japi.rdd.CassandraJavaRDDTest.testWithConnector started
[info] Test com.datastax.spark.connector.japi.rdd.CassandraJavaRDDTest.testWithReadConf started
[info] Test com.datastax.spark.connector.japi.rdd.CassandraJavaRDDTest.testWithAscOrder started
[info] Test com.datastax.spark.connector.japi.rdd.CassandraJavaRDDTest.testSelectColumnNames started
[info] Test com.datastax.spark.connector.japi.rdd.CassandraJavaRDDTest.testLimit started
[info] Test com.datastax.spark.connector.japi.rdd.CassandraJavaRDDTest.testWhere started
[info] Test com.datastax.spark.connector.japi.rdd.CassandraJavaRDDTest.testSelectColumns started
[info] Test com.datastax.spark.connector.japi.rdd.CassandraJavaRDDTest.testSelectedColumnRefs started
[info] Test com.datastax.spark.connector.japi.rdd.CassandraJavaRDDTest.testSelectedColumnNames started
[info] Test com.datastax.spark.connector.japi.rdd.CassandraJavaRDDTest.testWithDescOrder started
[info] Test run finished: 0 failed, 0 ignored, 10 total, 0.077s
[info] Test run started
[info] Test com.datastax.spark.connector.mapper.JavaBeanColumnMapperTest.testWorkWithAliasesAndHonorOverrides started
[info] Test com.datastax.spark.connector.mapper.JavaBeanColumnMapperTest.testSerializeColumnMap started
[info] Test com.datastax.spark.connector.mapper.JavaBeanColumnMapperTest.testGetters started
[info] Test com.datastax.spark.connector.mapper.JavaBeanColumnMapperTest.testColumnNameOverrideSetters started
[info] Test com.datastax.spark.connector.mapper.JavaBeanColumnMapperTest.testImplicit started
[info] Test com.datastax.spark.connector.mapper.JavaBeanColumnMapperTest.testSetters started
[info] Test com.datastax.spark.connector.mapper.JavaBeanColumnMapperTest.testWorkWithAliases started
[info] Test com.datastax.spark.connector.mapper.JavaBeanColumnMapperTest.testColumnNameOverrideGetters started
[info] Test run finished: 0 failed, 0 ignored, 8 total, 0.015s
[info] Test run started
[info] Test com.datastax.spark.connector.writer.AsyncExecutorTest.test started
[info] Test run finished: 0 failed, 0 ignored, 1 total, 0.471s
[info] Test run started
[info] Test com.datastax.spark.connector.japi.CustomTypeConverterTest.test1 started
[info] Test run finished: 0 failed, 0 ignored, 1 total, 0.008s
[info] Test run started
[info] Test com.datastax.spark.connector.japi.rdd.CassandraJavaPairRDDTest.testWithConnector started
[info] Test com.datastax.spark.connector.japi.rdd.CassandraJavaPairRDDTest.testWithReadConf started
[info] Test com.datastax.spark.connector.japi.rdd.CassandraJavaPairRDDTest.testWithAscOrder started
[info] Test com.datastax.spark.connector.japi.rdd.CassandraJavaPairRDDTest.testSelectColumnNames started
[info] Test com.datastax.spark.connector.japi.rdd.CassandraJavaPairRDDTest.testLimit started
[info] Test com.datastax.spark.connector.japi.rdd.CassandraJavaPairRDDTest.testWhere started
[info] Test com.datastax.spark.connector.japi.rdd.CassandraJavaPairRDDTest.testSelectColumns started
[info] Test com.datastax.spark.connector.japi.rdd.CassandraJavaPairRDDTest.testSelectedColumnRefs started
[info] Test com.datastax.spark.connector.japi.rdd.CassandraJavaPairRDDTest.testSelectedColumnNames started
[info] Test com.datastax.spark.connector.japi.rdd.CassandraJavaPairRDDTest.testWithDescOrder started
[info] Test run finished: 0 failed, 0 ignored, 10 total, 0.016s
[info] Test run started
[info] Test com.datastax.spark.connector.rdd.partitioner.Murmur3PartitionerTokenRangeSplitterTest.testSplit started
[info] Test com.datastax.spark.connector.rdd.partitioner.Murmur3PartitionerTokenRangeSplitterTest.testZeroRows started
[info] Test com.datastax.spark.connector.rdd.partitioner.Murmur3PartitionerTokenRangeSplitterTest.testWrapAround started
[info] Test com.datastax.spark.connector.rdd.partitioner.Murmur3PartitionerTokenRangeSplitterTest.testNoSplit started
[info] Test run finished: 0 failed, 0 ignored, 4 total, 0.014s
[info] Test run started
[info] Test com.datastax.spark.connector.mapper.TupleColumnMapperTest.testIncompleteConstructor started
[info] Test com.datastax.spark.connector.mapper.TupleColumnMapperTest.testIncompleteGetters started
[info] Test com.datastax.spark.connector.mapper.TupleColumnMapperTest.testGetters started
[info] Test com.datastax.spark.connector.mapper.TupleColumnMapperTest.testSerialize started
[info] Test com.datastax.spark.connector.mapper.TupleColumnMapperTest.testImplicit started
[info] Test com.datastax.spark.connector.mapper.TupleColumnMapperTest.testConstructor started
[info] Test com.datastax.spark.connector.mapper.TupleColumnMapperTest.testNewTable started
[info] Test run finished: 0 failed, 0 ignored, 7 total, 0.033s
[info] Test run started
[info] Test com.datastax.spark.connector.japi.CassandraRowTest.testGetBytes started
[info] Test com.datastax.spark.connector.japi.CassandraRowTest.testGetFloat started
[info] Test com.datastax.spark.connector.japi.CassandraRowTest.testGetShort started
[info] Test com.datastax.spark.connector.japi.CassandraRowTest.testGet started
[info] Test com.datastax.spark.connector.japi.CassandraRowTest.testToMap started
[info] Test com.datastax.spark.connector.japi.CassandraRowTest.testGetDateTime started
[info] Test com.datastax.spark.connector.japi.CassandraRowTest.testGetByte started
[info] Test com.datastax.spark.connector.japi.CassandraRowTest.testGetDate started
[info] Test com.datastax.spark.connector.japi.CassandraRowTest.testGetInet started
[info] Test com.datastax.spark.connector.japi.CassandraRowTest.testGetList started
[info] Test com.datastax.spark.connector.japi.CassandraRowTest.testGetLong started
[info] Test com.datastax.spark.connector.japi.CassandraRowTest.testGetUUID started
[info] Test com.datastax.spark.connector.japi.CassandraRowTest.testGetObjectAndApply started
[info] Test com.datastax.spark.connector.japi.CassandraRowTest.testGetBoolean started
[info] Test com.datastax.spark.connector.japi.CassandraRowTest.testGetDouble started
[info] Test com.datastax.spark.connector.japi.CassandraRowTest.testGetInt started
[info] Test com.datastax.spark.connector.japi.CassandraRowTest.testGetMap started
[info] Test com.datastax.spark.connector.japi.CassandraRowTest.testGetSet started
[info] Test com.datastax.spark.connector.japi.CassandraRowTest.testGetString started
[info] Test com.datastax.spark.connector.japi.CassandraRowTest.testGetVarInt started
[info] Test com.datastax.spark.connector.japi.CassandraRowTest.testGetDecimal started
[info] Test run finished: 0 failed, 0 ignored, 21 total, 0.083s
[info] Test run started
[info] Test com.datastax.spark.connector.types.TypeSerializationTest.testSerializationOfCollectionTypes started
[info] Test com.datastax.spark.connector.types.TypeSerializationTest.testSerializationOfPrimitiveTypes started
[info] Test run finished: 0 failed, 0 ignored, 2 total, 0.036s
[info] Test run started
[info] Test com.datastax.spark.connector.rdd.partitioner.RandomPartitionerTokenRangeSplitterTest.testSplit started
[info] Test com.datastax.spark.connector.rdd.partitioner.RandomPartitionerTokenRangeSplitterTest.testZeroRows started
[info] Test com.datastax.spark.connector.rdd.partitioner.RandomPartitionerTokenRangeSplitterTest.testWrapAround started
[info] Test com.datastax.spark.connector.rdd.partitioner.RandomPartitionerTokenRangeSplitterTest.testNoSplit started
[info] Test run finished: 0 failed, 0 ignored, 4 total, 0.018s
[info] Test run started
[info] Test com.datastax.spark.connector.rdd.reader.ClassBasedRowReaderTest.testSerialize started
[info] Test run finished: 0 failed, 0 ignored, 1 total, 0.019s
[info] ScalaCheck
[info] Passed: Total 0, Failed 0, Errors 0, Passed 0
[info] ScalaTest
[info] Run completed in 12 seconds, 352 milliseconds.
[info] Total number of tests run: 315
[info] Suites: completed 27, aborted 0
[info] Tests: succeeded 315, failed 0, canceled 0, ignored 0, pending 0
[info] All tests passed.
[info] Passed: Total 472, Failed 0, Errors 0, Passed 472
[info] Checking every *.class/*.jar file's SHA-1.
[info] Merging files...
[warn] Merging 'META-INF/INDEX.LIST' with strategy 'last'
[warn] Merging 'META-INF/LICENSE.txt' with strategy 'last'
[warn] Merging 'META-INF/MANIFEST.MF' with strategy 'discard'
[warn] Merging 'META-INF/NOTICE.txt' with strategy 'last'
[warn] Merging 'META-INF/io.netty.versions.properties' with strategy 'last'
[warn] Strategy 'discard' was applied to a file
[warn] Strategy 'last' was applied to 4 files
[info] SHA-1: 806f89105049dfaa51cfda6312264f4333133506
[info] Packaging /home/cass/work/spark-cassandra-connector/spark-cassandra-connector/target/scala-2.10/spark-cassandra-connector-assembly-1.6.0-M2.jar ...
[info] Done packaging.
[success] Total time: 138 s, completed Apr 14, 2016 11:00:11 AM
```

#### Assemble spark-cassandra-connector for Scala 2.10 - Successful

---

[cass@metalgear spark-cassandra-connector]$ `find $PWD -iname *.jar` <br>
```
/home/cass/work/spark-cassandra-connector/sbt/sbt-launch-0.13.8.jar

/home/cass/work/spark-cassandra-connector/spark-cassandra-connector/target/scala-2.10/spark-cassandra-connector-assembly-1.6.0-M2.jar
```
