# Redis

**How to start**

Download docker redis, run redis-cli in remote shell

**Basic info**

In memory, key store db.

Data type: Set, List, String, HashMap, ZSet(sorted), geo, hyperlogs, bitmap

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

setex key exptime(s) value

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
2. port&#x20;
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

appendonly no # default use rdb is enough

appendfilename "appendonly.aof"

appendfsync everysec # every second append





### AOF

{% embed url="https://redislabs.com/ebook/part-2-core-concepts/chapter-4-keeping-data-safe-and-ensuring-performance/4-1-persistence-options/4-1-2-append-only-file-persistence/" %}

redis-check-aof --fixed             repair aof log

![](<../../../../.gitbook/assets/image (14).png>)

no-appendfsync-on-rewrite no

auto-aof-rewrite-percentage 100

auto-aof-rewrite-min-size 64mb

![](<../../../../.gitbook/assets/image (11).png>)



### RDB

![](<../../../../.gitbook/assets/image (9).png>)

Dump.rdb file

持久化文件会被自动读入redis当启动

dump.rdb file generation time:

1. RDB triggered
2. Flushall （clear dbs)
3. stop redis server



### Redis Pub/Sub

![](<../../../../.gitbook/assets/image (13).png>)

![](<../../../../.gitbook/assets/image (16).png>)

_****_

### Master-Slave

![](<../../../../.gitbook/assets/image (10).png>)

_****_

![](<../../../../.gitbook/assets/image (15).png>)

See docker-compose.yml in redis-docker for setting up cluster mode

Async by nature to replication

![](<../../../../.gitbook/assets/image (12).png>)

Without sentinel, once master is disconnected, there is no auto fail over and new master, manual failover takes downtime and efforts

### Sentinel

{% embed url="https://zhuanlan.zhihu.com/p/60632927" %}





_**Questions**_

**Why redis is single threaded?**

{% embed url="https://www.cnblogs.com/javastack/p/12848446.html" %}

Jedis vs lettuce?

{% embed url="https://juejin.cn/post/6844903985158045703" %}

{% embed url="https://blog.csdn.net/qq_36666651/article/details/80955398" %}



**Eviction policy**

{% embed url="https://docs.redislabs.com/latest/rs/administering/database-operations/eviction-policy/" %}



