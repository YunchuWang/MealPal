# BinarySearch

Usually in sorted array.

Search space or range: what to search and what range to search

Idea is to narrow down search range between lower and upper bounds maintained by pointers.

1. Decide sentinel case for iteration: end the search if exhausted

   2. Every iteration, we reduce the range by comparing middle element with target or comparing the middle element whether match with searching condition

   3. We narrow down range

   3. Found then return, else continue.



模板

两种

简单题：while\(i &lt;= j\), i+1, j-1, 判断i或j

复杂题：while\(i &lt; j\) i=mid, j=mid-1 or i = mid+1, j=mid, 结果i==j，直接判断i

