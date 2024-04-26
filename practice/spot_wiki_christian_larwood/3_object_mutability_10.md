```ruby
def add_name(arr, name)
  arr = arr << name
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names
```
Line 7 returns `nil` and outputs `bob`, `kim`, and `jim` on the console on separate lines.

On line 5, the local variable `names` is initialized to reference an array object `['bob', 'kim']`.

On line 6, the method `add_name` is called with two arguments: the array object that `names` references (`['bob', 'kim']`) as the first argument, and a string object `'jim'` as the second argument.

The `add_name` method is defined from line 1 to 3, with `arr` and `name` as the two method parameters. Within the method, on line 2, the method parameter `arr` is reassigned the return value of calling the mutating method `<<` (the shovel operator) on the array object that `arr` references (`['bob', 'kim']`), and the string object that `name` references (`'jim'`) as argument. `<<` modifies its caller string object by concatenating its argument string to the caller string. Therefore, `arr << name` returns `['bob', 'kim', 'jim']`, which is reassigned to `arr`.

On line 7, the method `puts` is called on the string object that `names` references. `names` now references `['bob', 'kim', 'jim']` because the method call on line 6 mutated the array that `names` originally referenced by concatenating it with `'jim'` (on line 2). Therefore, line 7 outputs `bob`, `kim`, and `jim` on the console on separate lines.

This code example demonstrates the concepts of variables as pointers, object mutability, and mutating methods.