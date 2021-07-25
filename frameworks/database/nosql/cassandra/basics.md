# Basics

Backed by Big Table

{% embed url="https://www.bilibili.com/video/BV1aQ4y1Z7Nj?p=18&spm\_id\_from=pageDriver" %}



_**Basic structure**_

Row key is like primary key in mysql

column family is table

keyspace is db

Every record is like Map&lt;String, Map&lt;String, Value&gt;&gt;



_**Data/Text types**_

_**csql commands**_

_**Indexes**_

1. Row key\(Primary\) can be single key or composite \(must be unique\)
2. If composite, first key is partition key, rest is clustering key which is used for sorting data in cassandra
3. Create index on table, index can be duplicate, how it works in Cassandra, it create a new table with index as primary key and store original primary key as reference.
4. Can create index on collection type like map or set,





_**Data operations**_

1. Add ttl for record
2. Exact search on partition key, range/exact search on clustering key
3. Search on collection index column, you can search for contains key but not value

![](../../../../.gitbook/assets/image%20%288%29.png)

    4. Allowing filtering will do full scan, not recommended.

    5. Sorting, order by can only be on clustering key not indexed, need to specify partition key to know which partition data are on

     6. Updating/Inserting

     7. Batch operation, multiple operations in one run



