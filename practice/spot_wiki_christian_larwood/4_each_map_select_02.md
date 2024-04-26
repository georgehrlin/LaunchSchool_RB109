```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.select { |n| n.odd? }
```
Line 3 returns `[1, 3, 5, 7, 9]`.

The local variable `arr` is initialized on line 1 to reference the array object `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`.

On line 3, the method `select` is called on the array object that `arr` references, with a block and `n` as the block parameter. `select` iterates through the caller array and passes each element as argument to the block, which the block parameter then references. After the iterations, `select` returns a new array object the elements of which the block evaluated to be truthy with. Inside the block, on each iteration, the method `odd?` is called on the integer that `n` references; `odd?` returns `true` if `n` references an odd number. Only `1`, `3`, `5`, `7`, and `9`, are evaluated to be `true`, so `arr.select` returns `[1, 3, 5, 7, 9]`.