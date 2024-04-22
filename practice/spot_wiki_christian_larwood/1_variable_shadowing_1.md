What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
a = 4
b = 2

2.times do |a|
  a = 5
  puts a
end

puts a
puts b
```
The loop created by the method call `2.times` outputs `5` two times on the console, on separate lines. The method call `2.times` on line 4 returns `2`.

Line 9 returns `nil` and outputs `4` on the console.

Line 10 returns `nil` and outputs `2` on the console.

On line 1, the local variable `a` is intialized to reference the integer object `4`.

On line 2, the local variable `b` is intialized to reference the integer object `2`.

On line 4, the method `times` is called on an integer object `2` with a block that spans from line 4 to 7 as argument, and `a` as the block parameter. The `2.times` method call creates a loop that iterates two times. In each iteration: the block parameter `a` is assigned an integer, first `0` then `1`, passed from the method call; on line 5, `a` is assigned the integer object `5`; on line 6, the method `puts` is called with the integer object that `a` points to as argument, and because there are two iterations, line 6 outputs `5` two times on the console.

On line 9, the method `puts` is called with the integer object that `a` references as argument. `a` references `4`, not `5`, despite the seeming reassignment on line 5. Line 5 did not reassign `a` to 5 because of variable shadowing (both the block parameter and the local variable in this case share the same name `a`) and access to the local variable `a` initialized on line 1 from within the block is prevented.

On line 10, the method `puts` is called with the integer object that `b` references as argument. `b` references `2`, so line 10 outputs `2` onthe console.

This code example illustrates the concept of variable shadowing.