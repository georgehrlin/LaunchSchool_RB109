```ruby
arr = [1, 2, 3, 4, 5]

new_array = arr.map do |n|
  n > 1
end

p new_array
```
Line 7 returns and outputs `[false, true, true, true, true]`.

On line 1, the local variable `arr` is initialized to reference the array object `[1, 2, 3, 4, 5]`.

On line 3, the local variable `new_array` is initialized to reference the return value of calling the method `map` on the array object that `arr` references, with a block and `n` as the block parameter. `map` iterates through its caller array and passes each element to the block, which the block parameter then references. `map` returns a new array object the elements of which are return values of the block. Inside the block, on line 4, the method `>` is called on the integer object that `n` references with `1` as the argument. `>` returns `true` if its caller is larger than its argument. Therefore, `arr.map` returns `[false, true, true, true, true]`, which is then assigned to `new_array`.

On line 7, the method `p` is called on the array that `new_array` references. Line 7 returns and outputs `[false, true, true, true, true]`.