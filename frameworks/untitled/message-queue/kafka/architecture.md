# Architecture

有一个服务接受大量request，request又不能很快处理，这个时候如果等服务一个个处理那performance就很low，怎么办呢？分给别的服务做呗，先存到queue里，存的快啊，别的服务去抓了做。本来接受请求和处理应该是一起进行（同步），现在不是一起了（异步）。但是这样会产生race condition。

{% embed url="https://zhuanlan.zhihu.com/p/38269875" %}

{% embed url="https://jiyiren.github.io/2018/08/04/kafka/" %}

{% embed url="https://blog.csdn.net/bigtree\_3721/article/details/80953197" %}



