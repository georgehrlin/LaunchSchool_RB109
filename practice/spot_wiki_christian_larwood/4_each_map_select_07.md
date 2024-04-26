```ruby
arr = [1, 2, 3, 4, 5]

incremented = arr.map do |n|
  n + 1
end

p incremented
```
Line 7 returns and outputs `[2, 3, 4, 5, 6]`.

On line 1, the local variable `arr` is initialized to reference `[1, 2, 3, 4, 5]`.

On line 3, the local variable `incremented` is initialized to reference the return value of calling the method `map` on the array object that `arr` references, with a block and `n` as the block parameter. `map` iterates through the elements of its caller array and passes each element to the block, which the block parameter then references. `map` returns a new array the elements of which are return values of the block. Inside the block, on line 4, the method `+` is called on the integer object that `n` references with `1` as the argument. Line 4 returns the sum of `n` and `1`, which is the return value of the block. Therefore, `arr.map` returns `[2, 3, 4, 5, 6]` and is assigned to `incremented`.

On line 7, the method `p` is called with the array object that `incremented` references as argument. Line 7 returns and outputs `[2, 3, 4, 5, 6]`.