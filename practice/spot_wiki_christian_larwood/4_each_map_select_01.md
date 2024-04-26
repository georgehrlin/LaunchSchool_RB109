```ruby
array = [1, 2, 3, 4, 5]

array.select do |num|
  puts num if num.odd?
end
```
The method call `array.select` on line 3 returns `[]` and outputs `1`, `3`, `5` on the console on seaprate lines.

On line 1, the local variable `array` is initialized to reference the five-element array object `[1, 2, 3, 4, 5]`.

On line 3, the method `select` is called on the array object that `array` references (`[1, 2, 3, 4, 5]`), with a block that spans from line 3 to 5, and `num` as the block parameter. `select` iterates through the caller array and passes each element as argument to the block, which is then assigned to `num`. Within the block, on line 4, the flow control keyword `if` is used to create a conditional statement. The condition is based on whether calling the method `odd?` on the number object that `num` references returns `true` or `false`; if it returns `true`, then the method call of `puts` with `num` as the argument gets executed.

`num.odd?` returns `true` only when `num` references `1`, `3`, or `5`. Therefore, `puts num` is executed when `num` references `1`, `3`, or `5`, and outputs `1`, `3`, and `5`on the console on separate lines.

Finally, `select` returns a new array object the elements of which the block evaluated to be truthy with. Because the return value of the block was always `nil` (due to the method `puts` being the last evaluated line of expression), `array.select` on line 3 returns `[]`.

`array` references `[1, 2, 3, 4, 5]`. `select` is not destructive.