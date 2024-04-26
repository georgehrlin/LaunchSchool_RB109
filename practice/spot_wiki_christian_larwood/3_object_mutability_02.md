```ruby
def fix(value)
  value = value.upcase
  value.concat('!')
end

s = 'hello'

t = fix(s)
```
### What values do `s` and `t` have? Why?
Line 8 returns `"HELLO!"`.

`s` references `'hello'`. `t` references `"HELLO!"`.

On line 6, the local variable `s` is initialized to reference the string object `'hello'`.

On line 8, the local variable `t` is initialized to reference the return value of calling the method `fix` with the object that `s` references as argument.

The method `fix` is defined from line 1 to 4 with `value` as the method parameter. Inside the method, on line 2, `value` is reassigned the return value of calling the method `upcase` on the object that `value` references. `value.upcase` returns `"HELLO"`, so `value` is reassigned to reference `"HELLO"`. On line 3, the mutating method `concat` is called on `value` with a string argument `'!'`. `concat` concatenates the argument string to the caller string. After the method invocation, `value` references `"HELLO!"`. `"HELLO"` is the implicitly returned value of `fix(s)`.

On line 8, `t` is assigned the return value of `fix(s)`. Thus, `t` references `"HELLO!"`.

`s` still references `'hello'` because the value of the string object was not mutated by the method call `fix(s)`. Inside the method, even though the method parameter `value` referenced `'hello'` at first, it was reassigned to another string object on line 2. Therefore, the mutating method `concat` had no effect on the string object that was passed in as the original argument to the method.

This code example illustrates the concepts of variables as pointers and how non-mutating and mutating methods work differently.