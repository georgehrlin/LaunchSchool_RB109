```ruby
a = %w(a b c)
a[1] = '-'
p a
```
Line 4 returns `["a", "-", "c"]` and outputs `["a", "-", "c"]` on the console.

On line 1, the local variable `a` is initialized to reference an array object `["a", "b", "c"]`.

On line 2, the array setter method `[]=` is called on the array object referenced by `a` with `1` and `'-'` as arguments. `[]=` mutates the caller array by changing the element at the index argument to the element argument. Therefore, `a` now references `["a", "-", "c"]`.

On line 3, the method `p` is called with the array object that `a` references as argument. It returns `["a", "-", "c"]` and outputs `["a", "-", "c"]` on the console.