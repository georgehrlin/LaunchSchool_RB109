```ruby
def fix(value)
  value = value.upcase!
  value.concat('!')
end

s = 'hello'

t = fix(s)
```
### What values do `s` and `t` have? Why?
`s` references `"HELLO!"`. `t` also references `"HELLO!"`.

On line 6, the local variable `s` is initialized to reference the string object `'hello'`.

On line 8, the local variable `t` is initialized to reference the return value of calling the method `fix` on the string object `s` references (`'hello'`).

The method `fix` is defined from lin 1 to 4 with `value` as the method parameter. Inside the method, on line 2, `value` is reassigned the return value of calling the mutating method `upcase!` on the string object that `value` references. `upcase!` mutates its caller string object by turning all of the string's letters uppercase. `upcase!` returns the same but mutated caller object. Therefore, `value` now references `"HELLO"`. On line 3, the mutating method `concat` is called on the string object `value` references with `'!'` as argument. `concat` mutates its caller string object by concatenating the argumnt string to the caller string. Therefore, `value` now references `"HELLO!"`. Line 3 is the last line of evaluated expression of the method, so `"HELLO!"` is the return value of the method call.

On line 8, `t` is assigned `"HELLO!"`.

`s` also references `"HELLO!"` because all of the mutating effects of calling `fix` with `s` as argument took place on the string object that `s` originally references. The reassignment of `value` on line 2 did not prevent `concat` from mutating the original string on line 3, because `value` was reassigned the same (but mutate) string object.