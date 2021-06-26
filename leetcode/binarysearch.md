# BinarySearch

Usually in sorted array.

Idea is to narrow down search range between lower and upper bounds maintained by pointers.

1. Decide sentinel case for iteration: end the search if exhausted

   2. Every iteration, we reduce the range by comparing middle element with target. Found then return, else continue.

