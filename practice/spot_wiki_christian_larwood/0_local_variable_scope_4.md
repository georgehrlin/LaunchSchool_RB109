What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
def example(str)
  i = 3
  loop do
    puts str
    i -= 1
    break if i == 0
  end
end

example('hello')
```
This code returns `nil`. It outputs `hello` three times on the console on separate lines.

On line 10, the method `example` is called with the string object `'hello'` as argument.

The method `example` is defined on line 1 to 8 with `str` as the parameter. On line 2, the local variable `i` is initialized to reference the integer object `3`. On line 3, the `method` loop is called with a block that spans from line 3 to 7 as argument.

In every iteration, on line 4, the method `puts` is called with the object that `str` references as argument. On line 5, `i` is reassigned the return value of the iterget object that it references minus `1`. On line 6, the keyword `break` is used if `i` is equal to `0` to break out of the loop.

The loop from line 3 to 7 outputs `hello` three times on the console, reassigns `i` to `0` in its third and final iteration, and exits the loop with `break`.

The final return value of the method call on line 10 is `nil` because `break if i == 0` is the last evaluated expression and the return value `nil` of `break` is returned implicitly.

This code example illustrates the concepts of method definition, method invocation, loops, and flow control with the keyword `break`, and implicit return.