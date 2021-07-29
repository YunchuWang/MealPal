# Redis

**How to start**

Download docker redis, run redis-cli in remote shell

**Basic info**

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



_**Jedis/Lettuce**_

See austinapi service



### _**Redis.Config**_

redis server config file

1. bind ip
2. port 
3. protected-mode
4. daemonize yes
5. loglevel notice
6. logfile path
7. databases count



Persistence

save num of seconds num of keys changed - rdb

Security

requirepassword default false

Client Limit

maxclients 1000

maxmemory bytes

maxmemory-policy noeviction

Append only settings

appendonly no \# default use rdb is enough

appendfilename "appendonly.aof"

appendfsync everysec \# every second append





### AOF

{% embed url="https://redislabs.com/ebook/part-2-core-concepts/chapter-4-keeping-data-safe-and-ensuring-performance/4-1-persistence-options/4-1-2-append-only-file-persistence/" %}

redis-check-aof --fixed             repair aof log

![](../../../../.gitbook/assets/image%20%2810%29.png)

no-appendfsync-on-rewrite no

auto-aof-rewrite-percentage 100

auto-aof-rewrite-min-size 64mb

### RDB

![](../../../../.gitbook/assets/image%20%289%29.png)

Dump.rdb file

持久化文件会被自动读入redis当启动

dump.rdb file generation time:

1. RDB triggered
2. Flushall （clear dbs\)
3. stop redis server



_**Questions**_

**Why redis is single threaded?**

{% embed url="https://www.cnblogs.com/javastack/p/12848446.html" %}

Jedis vs lettuce?

{% embed url="https://juejin.cn/post/6844903985158045703" %}

{% embed url="https://blog.csdn.net/qq\_36666651/article/details/80955398" %}



**Eviction policy**

{% embed url="https://docs.redislabs.com/latest/rs/administering/database-operations/eviction-policy/" %}





