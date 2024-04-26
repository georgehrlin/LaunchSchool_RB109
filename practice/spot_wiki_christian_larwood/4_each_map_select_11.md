```ruby
[1, 2, 3].each do |num|
  puts num
end
```
The method call `[1, 2, 3].each` on line 1 returns `[1, 2, 3]` and outputs `1`, `2`, `3` on the console on separate lines.

On line 1, the method `each` is called on the array object `[1, 2, 3]`, with a block and `num` as the block parameter. `each` iterates through the elements of its caller array and passes each element as argument to the block. Inside the block, on line 2, the method `puts` is called with the integer object that `num` references as argument. Line 2 outputs the elements of `[1, 2, 3]` on the console separately in each iteration. Finally, `each` returns its caller object, so `[1, 2, 3].each` returns `[1, 2, 3]`.