What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
a = "Hello"
b = a
a = "Goodbye"

puts a
puts b
```
Line 7 and line 8 both return `nil`.
Line 7 outputs `Goodbye`. Line 8 outputs `Hello`.

The local variable `a` is initialized on line 1 to reference a string object `"Hello"`. The local variable `b` is initialized on line 2 and assigned the object referenced by `a`. `b` thus points to `"Hello"`.

On line 3, `a` is reassigned a different string object `"Goodbye"`.

Therefore, on line 7, when the method `puts` is called with the object that `a` references as argument, `Goodbye` is output on the console.

On line 8, when the method `puts` is called with the object that `b` points to as argument, `Hello` is output on the console.

This code example illustrates the concept of variables as pointers. Variables do not contain values per se, they adopt references that point to objects that contain the values.