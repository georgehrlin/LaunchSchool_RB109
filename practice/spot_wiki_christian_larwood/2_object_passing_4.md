```ruby
def test(b)
  b.map { |letter| "I like the letter: #{letter}" }
end

a = ['a', 'b', 'c']

test(a)
```
### What is `a`? What if we called `map!` instead of `map`?
`a` references `['a', 'b', 'c']`. Even though the method `map` is called on the array object that `a` references, there is no change to the array because `map` is not mutating.

If we called `map!` instead of `map`, `a` would reference `["I like the letter: a", "I like the letter: b", "I like the letter: c"]` after the method call on line 8.

Walk-through of the code example:

On line 5, the local variable `a` is initialized to reference an array object `['a', 'b', 'c']`.

On line 7, the method `test` is called with the array object tha `a` references as argument.

The method `test` is defined on line 1 to 3 with `b` as the method parameter. Inside the method definition, on line 2, the method `map` is called on the object that `b` references with a block as argument and `letter` as the block parameter. Inside the block is a string with an interpolation.

`map` is an array method that iterates through the elements of the caller array and passes each element to its block. The block then processes each value passed to it. `map` finally returns a new array the elements of which are return values of the block.

Therefore, calling `test` on `a` returns an array: `["I like the letter: a", "I like the letter: b", "I like the letter: c"]`. And because `map` is non-mutating, `a` still references `['a', 'b', 'c']`.