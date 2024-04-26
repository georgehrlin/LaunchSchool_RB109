```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.select do |n|
  n + 1 
  puts n
end

p new_array
```
Line 8 returns and outputs `[]`.

The method call on line 3 outputs `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, and `10` on the console on separate lines.

On line 1, the local variable `arr` is initialized to reference the array object `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`.

On line 3, the local variable `new_array` is initialized to reference the return value of calling the method `select` on the array object that `arr` references, with a block and `n` as the block parameter. `select` iterates through its caller array object and passes each element to the block, which the block parameter then references. `select` returns a new array the elements of which the block evaluated to be truthy with. On line 4, the method `+` is called on the integer object that `n` references with `1` as argument. On line 5, the method `puts` is called on the integer object that `n` references.

In each iteration: the integer referenced by `n` is output on the console when line 5 is reached; the block is always evaluated to `nil` because line 5 is the last line of the block, thus the return value of `puts`, `nil`, is the final return value of the block. The block returns `nil` with every element of the original argument array, so none of the elements in the original array gets "selected" to be in the final array by `select`. Therefore, the `arr.select` on line 3 returns `[]`, which is then assigned to `new_array`.

On line 8, the method `p` is called on the array object that `new_array` references. `new_array` references `[]`, which is output on the console.