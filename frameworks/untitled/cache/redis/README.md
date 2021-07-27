# Redis

In memory, key store db.

Data type: Set, List, String, HashMap, ZSet\(sorted\), geo, hyperlogs, bitmap

default 16 databases, and default use first db

default port: 6379

**Commands:**

keys - show all keys in db

flushdb - flush cur db

flushall - flush all dbs

exists x - whether key exists

set key value

get key

expire key seconds - set expiration time for key

setex key exptime\(s\) value

setnx key value - set key if not exists



_**Locking**_

{% embed url="https://www.zhihu.com/question/294599028" %}

its distributed lock.

乐观锁

悲观锁



_**Jedis**_





_**Questions**_

**Why redis is single threaded?**

{% embed url="https://www.cnblogs.com/javastack/p/12848446.html" %}



**Eviction policy**

{% embed url="https://docs.redislabs.com/latest/rs/administering/database-operations/eviction-policy/" %}





