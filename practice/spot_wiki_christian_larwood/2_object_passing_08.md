```ruby
def increment(x)
  x << 'b'
end

y = 'a'

increment(y)

puts y
```
Line 9 returns `nil` and outputs `ab` on the console.

On line 5, the local variable `y` is initialized to reference the string object `a`.

On line 7, the method `increment` is called with the string object that `y` references as arugment.

The method `increment` is defined from line 1 to 3 with `x` as the method parameter. Inside the method, on line 2, the shovel operator is used with `b` as its argument. `<<` mutates the the string object that `x` references by concatenating `b` to it.

On line 7, the method call `increment(y)` returns `"ab"`, which is also what `y` now references to.

On line 9, the method `puts` is called on the string object that `y` references. It outputs `ab` on the console.

This code example demonstrates the concepts of variables as pointers and mutating methods.