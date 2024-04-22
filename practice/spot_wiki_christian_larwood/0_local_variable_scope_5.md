What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
def greetings(str)
  puts str
  puts "Goodbye"
end

word = "Hello"
greetings(word)
```
The method call on line 7 returns `nil` because the last evaluated line of expression of the method `greetings` is a method call of `puts`, and `puts`'s return value `nil` is returned implictly.

Line 7 outputs `Hello` and `Goodbye` on the console on separate lines.

On line 6, the local variable `word` is initialized to reference the string object `"Hello"`.

On line 7, the method `greetings` is invoked with the string object, `"Hello"`, as argument, which `word` references.

The method `greetings` is defined from line 1 to 4 with `str` as the method parameter. On line 2, the method `puts` is called with the string object (`"Hello"`) that `str` references as argument. Line 2 outputs `Hello` on the console. On line 3, `puts` is called with the string object `"Goodbye"` as argument. Line 3 outputs `Goodbye` on the console.

This code example demonstrates the concepts of method definition, method invocation, variables as pointers, and argument versus parameter.