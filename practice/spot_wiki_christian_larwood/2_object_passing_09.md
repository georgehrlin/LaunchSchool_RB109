```ruby
def change_name(name)
  name = 'bob' # does this reassignment change the object outside the method?
end

name = 'jim'

change_name(name)

puts name
```
Line 9 returns `nil` and outputs `jim` on the console.

On line 5, the local variable `name` is initialized to reference the string object `'jim'`.

On line 7, the method `change_name` is called with the string object that `name` references as argument.

The method `change_name` is defined from line 1 to 3 with `name` as the method parameter. Inside the method, on line 2, the method parameter `name` is reassigned the string object `'bob'`. This reassignment does not change the object that the local variable `name` (which is initialized outside of the method definition) references.

The method call on line 7 returns `"bob"`, but the local variable `name` (the one initialized on line 5) still references `'jim'`.

Therefore, on line 9, when the method `puts` is called with the string object that `name` references, `jim` is output on the console.

This code example illustrates the concepts of variables as pointers and the differences between local variables and parameters.