```ruby
arr1 = ["a", "b", "c"]
arr2 = arr1.dup

arr2.map! do |char|
  char.upcase
end

p arr1
p arr2
```
Line 8 returns `["a", "b", "c"]` and outputs `["a", "b", "c"]` on the console.

Line 9 returns `["A", "B", "C"]` and outputs `["A", "B", "C"]` on the console.

On line 1, the local variable `arr1` is initialized to reference the array object `["a", "b", "c"]`.

On line 2, the local variable `arr2` is initialized to reference the return value of calling the method `dup` on the object that `arr1` references. `arr1.dup` returns a copy of the object that `arr1` references, so `arr2` now references `["a", "b", "c"]` (despite having the same value, it has a different object id from the one initialized on line 1).

On line 4, the mutating method `map!` is called on the array object that `arr2` referencs with a block that spans from line 4 to 6, and `char` as the block parameter. `map!` iterates through its caller array object and mutates each array element by first passing it as argument to the block, then changing it to the return value of the block. Within the block, on line 5, the method `upcase` is called on the object `char` references, which is the array element from `arr2` in each iteration. `upcase` returns the uppercase version of its caller string object.

`arr2.map!` mutates the array object that `arr2` references to `["A", "B", "C"]`, which is also what it returns.

On line 8, the method `p` is called with the array object that `arr1` references as argument. `arr1` still references `["a", "b", "c"]`, not `["A", "B", "C"]`, because `arr2` is reassigned a copy of `arr1` on line 2. This leads to the mutating method `map!` having no effect on the object that `arr1` references. Therefore, line 8 returns and also outputs `["a", "b", "c"]` on the console.

On line 9, the method `p` is called with the array object that `arr2` references as argument. This returns and also outputs `["A", "B", "C"]` on the console.

This code example illustrates the concepts of variables as pointers, and how mutating and non-mutating methods work differently.