```ruby
def fix(value)
  value.upcase!
  value.concat('!')
  value
end

s = 'hello'

t = fix(s)
```
### What values do `s` and `t` have? Why?
On line 7, the local variable `s` is initialized to reference the string object `'hello'`.

On line 9, the local variable `t` is initialized to reference the return value of calling the method `fix` with the string object `s` references (`'hello'`) as argument.

The method `fix` is defined from line 1 to 5 with `value` as the method parameter. Within the method, on line 2, the mutating method `upcase!` is called on the string object `value` references (`'hello'`). `upcase!` mutates its caller string object by converting all of the string's letters uppercase. Therefore, `value` now references `"HELLO"`. On line 3, the mutating method `concat` is called on the string object `value` references (`"HELLO"`) with `'!'` as argument. `concat` mutates its caller string object by concatenating the argument to the caller string. Therefore, `value` now references `"HELLO!"`. On line 4, `value` is stated. The object `value` now references is returned implicitly as the return value of the method call as line 4 is the last evaluated expression of the method. Therefore, `fix(s)` returns `"HELLO!"`.

On line 9, `t` is assigned `"HELLO!"`.

`s` also now references `"HELLO!"`, because its reference to the original string object `'hello'` was first passed to the method call `fix(s)` on line 9. The original string object was then subsequently mutated on line 2 and 3 to `"HELLO!"`.

This code example illustrates the concepts of variables as pointers and mutating methods.