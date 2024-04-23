```ruby
def cap(str)
  str.capitalize! # does this affect the object outside the method?
end

name = "jim"

cap(name)

puts name
```
Line 9 returns `nil` and outputs `Jim` on the console.

On line 5, the local variable `name` is initialized to reference the string object `"jim"`.

On line 7, the method `cap` is called with the string object that `name` references as argument.

The method `cap` is defined from line 1 to 3 with `str` as the method parameter. Inside the method, on line 2, the mutating method `capitalize!` is called on the string object that `str` references. `capitalize!` mutates the caller string by converting its first letters uppercase. Therefore, `str` references `"Jim"` after the method call.

`str` references the same string object that the local variable `name` also references. Now, after the mutation, `name` references `"Jim"` too.

On line 9, the method `puts` is called with the string object that `name` references as argument. Line 9 outputs `Jim` on the console.

This code example demonstrates the concepts of mutating method and variables as pointers.