What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
a = 'Bob'

5.times do |x|
  a = 'Bill'
end

p a
```
Line 7 returns `"Bill"` and outputs `"Bill"` on the console.

On line 1, the local variable `a` is initialized to reference a string object `'Bob'`.

On line 3, the method `times` is called on the integer object `5` with a block that spans from line 3 to 5 as argument, and `x` as the block parameter. `5.times` creates a loop that iterates five times. In each iteration: an integer object, starting from `0` to `4`, is passed to the block and referenced by `x`; on line 4, `a` is reassigned the string object `'Bill'`.

On line 7, the method `p` is called with the string object that `a` references as argument. Line 7 returns `"Bill"` and outputs `"Bill"` on the console.

This code example illustrates the concept of local variable scoping rules in relation to blocks. Line 4 is inside the inner scope created by a block and has access to the local variable `a`, which is initialized in the outer scope. Therefore, `a` can be reassigned on line 4.