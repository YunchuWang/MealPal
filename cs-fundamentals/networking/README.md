# Networking

{% embed url="https://www.cnblogs.com/cxuanBlog/p/14414681.html" %}

{% embed url="https://www.zhihu.com/question/49335649" %}

{% embed url="https://blog.csdn.net/yang\_best/article/details/41643589" %}

{% embed url="https://www.zhihu.com/question/21546408" %}

{% embed url="https://cloud.tencent.com/developer/article/1173767" %}

mac 是不变的机器物理地址，ip是unique但可变的。

子网内部不需要路由，直接用arp 查mac 地址通讯

子网间通信需要找网关（路由器），找网关需要用arp 找网关的mac，然后网关存的routing table 告诉你目标ip的子网网关地址。

实际上通信是根据mac 地址在链路层，ip是封装的逻辑层

{% embed url="https://blog.csdn.net/qq\_39414668/article/details/79594012" %}

{% embed url="https://zhuanlan.zhihu.com/p/338380656" %}





