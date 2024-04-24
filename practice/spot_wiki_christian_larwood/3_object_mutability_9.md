```ruby
def add_name(arr, name)
  arr = arr + [name]
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names
```
Line 7 returns `nil` and outputs ~~`["bob", "kim"]`~~ on the console.

*Correction: Line 7 outputs `bob` and `kim` on two separate lines because the method used to output is `puts`, not `p`.*

On line 5, the local variable `names` is initialized to reference the array object `['bob', 'kim']`.

On line 6, the method `add_name` is called with the array object that `names` references and the string object `'jim'` as arguments.

The method `add_name` is defined from 1 to 3 with `arr` and `name` as the two method parameters. Inside the method, on line 2, the parameter `arr` is reassigned the return value of calling the method `+` on the array object that `arr` references with `[name]` as argument. `arr` references `['bob', 'kim']`, and `name` references `'jim'`, so after the method call, `arr` is reassigned to reference `["bob", "kim", "jim"]`. This is also implicitly returned as the return value of the method call `add_name(names, 'jim')`.

On line 7, the method `puts` is called with the array object that `names` references as argument. `names` still references `["bob", "kim"]`, because the method call on line 6 did not mutate the object that `names` references. More specifically, on line 2, the parameter that was assigned the reference to the array object that `names` references was reassigned a different array object. Therefore, line 7 outputs ~~`["bob", "kim"]`~~ on the console.

*Correction: `bob` and `kim` on two separate lines*