```ruby
[1, 2, 3].each_with_index do |num, index|
  puts "The index of #{num} is #{index}."
end
```
Line 2 returns `nil` (three times) and outputs on the console:
The index of 1 is 0.
The index of 2 is 1.
The index of 3 is 2.

On line 1, the enumerable method `each_with_index` is called on the array `[1, 2, 3]`, with a block and `num` and `index` as the block parameters. The `each_with_index` iterates through the elements of the caller collection and passes the elements and their indices to the block. Inside the block, on line 2, the method `puts` is called with a string object as argument. The string contains two interpolations `#{num}` and `#{index}`. Therefore, using the first iteration as example, `num` references `1` and `index` references `0`, so Line 2 returns `nil` and outputs `The index of 1 is 0.` on the console, and so on and so forth with the rest of the elements in the array.