# Database

## B+ Tree\(Mysql\)

Range query on index is much faster

Equality search is O\(logN\)

## HashMap\(Dynamo, Redis\)

Range query = full scan O\(N\)

Equality search = O\(1\)

Dynamo 也支持“range query” 但是只限于一个shard （shard key + sort \)kkasd

