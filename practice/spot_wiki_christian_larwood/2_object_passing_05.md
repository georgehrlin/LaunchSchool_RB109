```ruby
a = 5.2
b = 7.3
a = b
b += 1.1
```
### What is `a` and `b`? Why?
`a` references `7.3`. `b` references `8.4`

On line 2, the local variable `a` is initialized to reference the integer object `5.2`.

On line 3, the local variable `b` is initialized to reference the integer object `7.3`.

On line 4, `a` is reassigned to reference the object that `b` references, which is `7.3`.

On line 5, `b` is reassigned the sum of the intger object that it references plus `1.1`, which is `8.4`.

Line 4 returns `7.3`.

Line 5 returns `8.4`.