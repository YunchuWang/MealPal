# Lock

Why need lock?

Tho redis executes transaction in sequence, the transaction executed first can still affect next transaction



Pessimitic lock - always get lock before doing transaction, too slow

Optimistic lock - never lock but when set watch for if version or key changes

[https://juejin.cn/post/6844903869583982599](https://juejin.cn/post/6844903869583982599)

