```ruby
odd, even = [1, 2, 3].partition do |num|
  num.odd?
end

p odd
p even
```
Line 5 returns and outputs `[1, 3]`.

Line 6 returns and outputs `[2]`.

On line 1, the local variables `odd` and `even` are initialized to reference, respectively, the first and second array that are elements of the nested array returned by calling the enumerable method `partition` on `[1, 2, 3]`. The `partition` is called with a block and `num` as the block parameter. The `partition` iterates through the caller array and passes each element of the array to the block; if the block returns a truthy value, the element being iterated is appeneded to the first array of the nested array which will be finally returned by `partition`; otherwise, the element being iterated is appended to the second array. Inside the block, on line 2, the method `odd?` is called on the integer object referenced by `num`. `odd?` returns `true` if the caller object is an odd number. Therefore, `1` and `3` are appended to the first array of the nested array, which will be finally returned by `partition`, and `2` is appended to the second array. The first array `[1, 3]` is assigned to `odd`, and the second array `[2]` is assigned to `even`.

On line 5, the method `p` is called on the array object `odd` references. Line 5 returns and outputs `[1, 3]`.

On line 6, the method `p` is called on the array object `even` references. Line 6 returns and outputs `[2]`.