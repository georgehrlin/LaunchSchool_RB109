```ruby
arr = [1, 2, 3, 4, 5]

arr.each { |n| puts n }
```
Line 4 outputs `1`, `2`, `3`, `4`, `5` on the console on seaprate lines and returns `[1, 2, 3, 4, 5]`.

The variable `arr` is initialized on line 1 to reference the array object `[1, 2, 3, 4, 5]`.

On line 3, the method `each` is called on the array object that `arr` references, with a block and `n` as the block parameter. `each` iterates through its caller array and passes each element to the block, which the block parameter then references. Inside the block, the method `puts` is called with the integer object `n` references as argument. Therefore, in every iteration, the integer that `n` references is output on the console. Finally, `each` returns its caller object, so `arr.each` returns `[1, 2, 3, 4, 5]`.