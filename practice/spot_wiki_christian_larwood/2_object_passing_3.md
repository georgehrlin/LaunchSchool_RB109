```ruby
a = [1, 2, 3, 3]
b = a
c = a.uniq
```
### What are `a`, `b`, and `c`? What if the last line was `c = a.uniq!`?
The local variable `a` is initialized on line 1 to reference an array object `[1, 2, 3, 3]`.

The local variable `b` is initialized on line 2 to reference the object referenced by `a`, which is `[1, 2, 3, 3]`.

The local variable `c` is initialized on lien 3 to reference the return value of calling the method `uniq` on the object that `a` references. `uniq` returns a new array that is rid of the extra elements that already exist in the original array. `c` references `[1, 2, 3]`.

`a` and `b` reference `[1, 2, 3, 3]`. `c` references `[1, 2, 3]`.

If the last line was `c = a.uniq!` instead, `a`, `b`, and `c` would reference the same array object, `[1, 2, 3]`. This is because `uniq!` is a mutating method and it returns the original but mutated object that it is called on.