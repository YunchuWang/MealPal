# Recursion

Recursion is solving a problem by repeatedly solving similar subproblems.

Like a loop like an iteration, each iteration structure is same but conditions are different

If a problem can be solved by recursion, meaning it is a bunch of iterations, a bunch of similar subproblems.

iterative是一个解决再解决另一个，recursion也是，但是它解决问题有依赖关系。

归去来兮，inception，一层层进去一层层出来

Template：

void solve\(int x\) {

// Boundary condition: when ans is found, problem is solved

if \(x == -1\) {

return;

}

// Processing at current iteration

y = 1;

// Solving next iteration of issue

solve\(x + 1\);



