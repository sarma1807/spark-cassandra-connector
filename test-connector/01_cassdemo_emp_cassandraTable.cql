-- create a keyspace for cassandra-java-driver demos
CREATE KEYSPACE cassdemo WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 3} ;

-- create employees table
CREATE TABLE cassdemo.emp (
    empid int,
    deptid int,
    first_name text,
    last_name text,
    PRIMARY KEY (empid, deptid)
) WITH CLUSTERING ORDER BY (deptid ASC)
;

-- insert some sample data into employees table
INSERT INTO cassdemo.emp (empid, deptid, first_name, last_name) VALUES (1001, 100, 'Scott', 'Tiger') ;
INSERT INTO cassdemo.emp (empid, deptid, first_name, last_name) VALUES (1003, 300, 'Queen', 'John') ;

