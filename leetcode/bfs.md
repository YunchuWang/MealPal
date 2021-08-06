# Bfs

常用的搜索方式。

1. 枚举。枚举运算量很大，需要预先确定枚举的定义域。
2. 广度优先搜索（BFS ）——通常可以用于计算图的连通性、单源最短路径、计算最小操作次数等。
3. 深度优先搜索（DFS）——经典题：火力中心布局。

BFS的占用的是队列的空间

DFS 占用的是栈的空间（因为递归）

BFS和DFS的空间复杂度恰好相反

对链状图，BFS最好（队列中最多只有1个元素），DFS最差（所有节点都在根节点的递归内）

对起点与其他所有点相邻的图，DFS最好（递归深度为1），BFS最差（队列中放满了所有与起点相邻的图）。





```text
queue<type> q;
q.push(初始状态);
while (!q.empty())
{
    type t = q.front() ;
    q.pop();
    遍历 t 的各个Next状态  next
    {
        if (next is legal)
        q.push(next); 计数或维护等;
    }
}
```



遍历层可以每次poll q size的nodes 或者放入空node mark 每层的end

