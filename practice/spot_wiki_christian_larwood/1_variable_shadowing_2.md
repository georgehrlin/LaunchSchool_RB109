What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
n = 10

1.times do |n|
  n = 11
end

puts n
```
Line 9 returns `nil` and outputs `10` on the console.

The local variable `n` is initialized on line 1 to reference the integer object `10`.

On line 5, the method `times` is called on the integer object `1` with a block that spans from line 5 to 7, and `n` as the block parameter. `1.times` creates a loop that iterates one time. In the iteration, `0` is returned by the method call and assigned to `n`. On line 6, the block variable `n` is reassigned the integer object `11`.

On line 9, the method `puts` is called with the integer object that `n` references as argument. `n` references `10`, not `11`, despite the seeming reassignment on line 6. The parameter of the block created on line 5 has the same name as the local variable initialized on line 1. This is variable shadowing. Therefore, any access to the local variable created in an outer scope from within the block is prevented. Line 9 thus outputs `10` on the console.

This code example illustrates the concept of variable shadowing.