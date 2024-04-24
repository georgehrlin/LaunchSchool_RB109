```ruby
def a_method(string)
  string << ' world'
end

a = 'hello'
a_method(a)
p a
```
Line 7 returns `"hello world"` and outputs `"hello world"` on the console.

On line 5, the local variable `a` is initialized to reference the string object `'hello'`.

On line 6, the method `a_method` is called with the string object that `a` references (`'hello'`) as argument.

The method `a_method` is defined from line 1 to 3, with `string` as the method parameter. Within the method, on line 2, the mutating method `<<` (the shovel operator) is called on the string object that `string` references (`'hello'`), with another string object, `' world'`, as argument. `<<` mutates its caller caller string by concatenating its argument string to it. Therefore, `string` now references `"hello world"`. This is also the implicit return value of the method because line 2 is the only and final line of the method.

On line 7, the method `p` is called on the string object that `a` references. `a` now references `"hello world"` because the string object that `a` originally referenced (on line 5) has been mutated by the method call on line 6. Therefore, line 7 outputs `"hello world"` on the console.