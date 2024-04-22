```ruby
a = "hi there"
b = a
a << ", Bob"
```
### What are `a` and `b`?
On line 1, the local variable `a` is initialized to reference the string object `"hi there"`.

On line 2, the local variable `b` is initialized to reference the object that `a` references, which is `"hi there"`.

On line 3, the shovel operator `<<` is called to mutate the string object that `a` references with `", Bob"` as argument. `<<` concatenates its argument to the caller string. Therefore, the string object referenced by `a` is mutated to `"hi there, Bob"`.

Both `a` and `b` now reference `"hi there, Bob"`. The references that `a` and `b` contain remain the same because `<<` is a mutating method. There is no reassignment.