What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
a = 4
b = 2

loop do
  c = 3
  a = c
  break
end

puts a
puts b
```
Both line 10 and 11 return `nil`.

Line 10 outputs `3`. Line 11 outputs `2`.

On line 1, the local variable `a` is initialized to reference the integer object `4`.

On line 2, the local variable `b` is intialized to reference the integer object `2`.

On line 4, the method `loop` is invoked with a block that spans from line 4 to 8 as argument. On line 5, the local variable `c` is initialized to reference the interger object `3`. On line 6, `a` is reassigned the object that `c` refernces. `a` now points to `3`. On line 7, the keyword `break` is used to exit the loop.

On line 10, the method `puts` is called with the object tha `a` references as argument. Line 10 outputs `3` on the console.

On line 11, the method `puts` is called with the object that `b` references as argument. Line 11 outputs `2` on the console.

This code example illustrates the concept of local scoping rules in relation to blocks. Line 6 is able to reassign a different object to `a` because it is within an inner scope, which has access to `a`, a variable that is initialized in the outer scope. Blocks create inner scopes that allow for access to variable intialized in the outer scope, but not vice versa.