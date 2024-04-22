What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
a = 4

loop do
  a = 5
  b = 3

  break
end

puts a
puts b
```
Both line 10 and line 11 return `nil`.

Line 10 outputs `5`. Line 1 causes an error, `NameError`.

On line 1, the local variable `a` is intialized to reference the integer object `4`.

On line 3, the method `loop` is invoked with a block that spans from line 3 to line 8 as argument. On line 4, `a` is reassigned `5`. On line 5, the block variable `b` is initialized to reference `3`. On line 7, the keyword `break` is used to exit the loop.

Line 10 outputs `5` because line 4 is within the inner schope of the block and has access to the local variable `a`, which is intialized in the outer scope. Line 4 reassigns `a` to `5`.

Line 11, on the other hand, raises an error because line 11 is in the outer scope and has no access to the local variable `b` that is intialized in an inner scope.

This code example illustrates the concept of local variable scoping rules in relation to blocks. Inner scopes have access to variables initialized in outer scopes, but not vice versa.