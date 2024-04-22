What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
animal = "dog"

loop do |animal|
  animal = "cat"
  break
end

puts animal
```
Line 8 returns `nil` and outputs `dog` on the console.

On line 1, the local variable `animal` is initialized to reference the string object `"dog"`.

On line 3, the method `loop` is called with a block that spans from line 3 to 6, and a block parameter `animal`. `loop` creates a loop. On line 4, `animal` is reassigned `"cat"`. On line 5, the keyword `break` is used to exit the loop.

On line 8, the method `puts` is called with the string object that `animal` references as argument. `animal` references `"dog"`, not `"cat"`, despite the seeming reassignment on line 4. The `animal` created on line 1 has not been reassigned a different object because of variable shadowing. The block parameter initialized on line 3 has the same name as the local variable created on line 1, so access to the local variable from within the block is prevented. Line 8 outputs `dog` on the console.

This code example demonstrates the concept of variable shadowing.