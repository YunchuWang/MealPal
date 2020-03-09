# Sharding

{% embed url="https://blog.csdn.net/KingCat666/article/details/78324678" %}



分库的key应该是search的key 而不可能是b tree 而是好划分的hashmap 或者某段时间之类的，而且如果分完应该保证别的index search 作用于那个shard 不然cross node search慢



