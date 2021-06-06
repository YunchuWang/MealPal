# Scalability

Scalability = ability to ****maintain good performance under larger workload

There is no system scalable by definition as load can increase, but we need to think how to deal with higher load

**What is load? load can be defined with several parameters depending on your system. Maybe tps, or dau, or hit rate on cache...**

Performance:

throughput: number of records processed per second or total time take to process a dataset of size.

response time: time taken to process a request and get response

response time can be affected by many variations: context switch, loss of tpc packet,  gc pause, etc therefore we measure by percentile. Percentile is percentage of requests slower than certain response time. ex. p99 means 99% of requests are faster than a time. Reducing a higher percentile is very hard and expensive.



Every magnitude of load require rethink of architecture. We want to distribute load across different machines named shared nothing architecture. 



