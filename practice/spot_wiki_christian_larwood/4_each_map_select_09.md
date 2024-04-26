```ruby
arr = [1, 2, 3, 4, 5]

new_array = arr.map do |n|
  n > 1
  puts n
end

p new_array
```
Line 9 returns and outputs an empty array ~~`[]`~~.

On line 1, the local variable `arr` is initialized to reference an array object `[1, 2, 3, 4, 5]`.

On line 3, the local variable `new_array` is initialized to reference the return value of calling the method `map` on the array object that `arr` references, with a block and `n` as the block parameter. `map` iterates through the elements of its caller array and passes each element as argument to the block, which the block parameter then references. `map` returns a new array, the elements of which are return values of the block. Inside the block, on line 4, the method `>` is called on `n` with `1` as the argument. `>` returns true if the caller object is larger than the argument object. On line 5, the method `puts` is called with the integer object that `n` references. Line 5 is the last line of the block, so the block always returns `nil` because `puts` on line 5 returns `nil`.

Therefore, because the block only returns `nil` at the end of every iteration, ~~`arr.map` returns `[]`~~, which is assigned to `new_array` on line 3.

On line 8, the method `p` is called on the array object that `new_array` references. `[]` is returned, and output on the console.

# Correction
The method call on line 3 `arr.map` outputs `1`, `2`, `3`, `4`, `5` on the console on separate lines.

Line 9 returns and outputs `[nil, nil, nil, nil, nil]`.

On line 1, the local variable `arr` is initialized to reference an array object `[1, 2, 3, 4, 5]`.

On line 3, the local variable `new_array` is initialized to reference the return value of calling the method `map` on the array object that `arr` references, with a block and `n` as the block parameter. `map` iterates through the elements of its caller array and passes each element as argument to the block, which the block parameter then references. `map` returns a new array, the elements of which are return values of the block. Inside the block, on line 4, the method `>` is called on `n` with `1` as the argument. `>` returns `true` if the caller object is larger than the argument object. On line 5, the method `puts` is called with the integer object that `n` references. *Line 4 outputs `1` to `5` on the console.* Line 5 is the last line of the block, so the block always returns `nil` because `puts` on line 5 returns `nil`.

Therefore, **because the block returns `nil` at the end of every iteration, `arr.map` iterates five times and returns `[nil, nil, nil, nil, nil]`,** which is assigned to `new_array` on line 3.

On line 8, the method `p` is called on the array object that `new_array` references. `[nil, nil, nil, nil, nil]` is returned, and output on the console.