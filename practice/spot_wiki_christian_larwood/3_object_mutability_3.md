```ruby
def fix(value)
  value << 'xyz'
  value = value.upcase
  value.concat('!')
end

s = 'hello'
t = fix(s)
```
### What values do `s` and `t` have? Why?
`s` references `"helloxyz"`. `t` references `"HELLOXYZ!"`.

On line 7, the local variable `s` is initialized to reference the string object `'hello'`.

On line 9, the local variable `t` is initialized to reference the return value of the method call `fix(s)`. The method `fix` is called with the string object that `s` references (`'hello'`) as argument.

On line 1 to 5, the method `fix` is defined with `value` as the method parameter. Inside the method, on line 2, the mutating method `<<` (the shovel operator) is called on the string object that `value` references with `'xyz'` as argument. `<<` mutates its caller string object by concatenating its argument to the string object. Therefore, `value` now references `"helloxyz"`. On line 3, `value` is reassigned the return value of calling the method `upcase` on `value`. `upcase` returns a new string object, the letters of which are uppercase versions of its caller string object. Therefore, `value` is reassigned `"HELLOXYZ"`. On line 4, the mutating method `concat` is called on the object that `value` references with `'!'` as argument. `concat` mutates its caller string object by concatenating its argument to the string object. Therefore, `value` now references `"HELLOXYZ!"`. Line 4 is the last line of evaluated expression in the method, so its return value, `"HELLOXYZ!"`, is the return value of the method call `fix(s)`.

On line 9, `t` is assigned `"HELLOXYZ!"`.

`s` references `'helloxyz'`, not `"HELLOXYZ!"`, because even though the original string obejct that it references was passed to the method call `fix(s)`, the only mutating method that had an effect on the original string object was the `<<` on line 2. On line 3, the parameter was reassigned a different string object, so the mutating method `concat` on line 4 had no effect on the string object that `s` references.