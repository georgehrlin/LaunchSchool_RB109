```ruby
def plus(x, y)
  x = x + y
end

a = 3
b = plus(a, 2)

puts a
puts b
```
Line 8 outputs `3`. Line 9 outputs `5`.

On line 5, the local variable `a` is initialized to reference the integer object `3`.

On line 6, the local variable `b` is initialized to reference the return value of calling the method `plus` with the integer that `a` references and `2` as arguments.

The method `plus` is defined from line 1 to 3 with `x` and `y` as the method parameters. On line 2, `x` is reassigned the sum of the integer object that it references and the integer object that `y` references; therefore, `x` is reassigned `5`. `5` is implicitly returned because it is the last evaluated expression in the method.

On line 6, `b` is assigned `5`.

On line 8, the method `puts` is called with the integer object that `a` references as argument. `a` references `3`. Line 8 outputs `3` on the console.

On line 9, the method `puts` is called with the integer object that `b` references as argument. `b` references `5`. Line 9 outputs `5` on the console.

This code illustrates the concepts of variables as pointers, method definition, and method invocation.