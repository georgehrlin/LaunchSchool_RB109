What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
animal = "dog"

loop do |_|
  animal = "cat"
  var = "ball"
  break
end

puts animal
puts var
```
Line 9 returns `nil` and outputs `cat` on the console.

Line 10 raises an error, `NameError`.

On line 1, the local variable `animal` is initialized to reference the string object `"dog"`.

On line 3, the method `loop` is called with a block that spans from line 3 to 7 as argument, and `_` as the block parameter. `loop` creates a loop that iterates once. On line 4, `animal` is reassigned the string object `"cat"`. On line 5, the local variable `var` is initialized to reference the string object `"ball"`. On line 6, the flow control keyword `break` is used to exit the loop.

On line 9, the method `puts` is called with the string object that `animal` references as argument. `animal` references `"cat"` after being reassigned on line 4. Therefore, line 9 returns `nil` and outputs `cat` on the console.

On line 10, the method `puts` is called with the object that `var` references as argument. However, `var` is initialized inside the inner scope of a block, and line 10 is in the outer scope. Therefore, line 10 has no access to `var` and raises an error, `NameError`.

This code example illustrates the concept of local variable scoping rules in relation to blocks. Blocks create inner scopes that have access to variables initialized in the outer scope, but the outer scope has no access to variables intialized in an inner scope.