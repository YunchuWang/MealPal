# Database

## B+ Tree\(Mysql\)

Range query on index is much faster

Equality search is O\(logN\)



## HashMap\(Dynamo, Redis\)

Range query = full scan O\(N\)

Equality search = O\(1\)  - \(shard key\)

Dynamo 也支持“range query” 但是只限于一个shard （shard key + sort key\)



## 所有的nosql 都是key value， 最多两个key

但是这不是复合key，而是分层key

dynamodb， 最多两个key，比如hash key + sort key，value给你定了就是所有column

redis，一个key，value随意阿，比如user\_id is key, list of friends is value

hbase,  一个row key找partition，col name 做key找cell, cell contains timestamp and value



