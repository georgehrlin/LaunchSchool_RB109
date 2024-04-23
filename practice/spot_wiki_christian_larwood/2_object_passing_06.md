```ruby
def test(str)
  str += '!'
  str.downcase!
end

test_str = 'Written Assessment'

test(test_str)

puts test_str
```
Line 10 returns `nil` and outputs `Written Assessment` on the console.

On line 6, the local variable `test_str` is initialized to reference the string object `'Written Assessment'`.

On line 8, the method `test` is called with the string object that `test_str` references as argument.

The method `test` is defined on line 1 to 4 with `str` as the method parameter. On line 2, `str` is reassigned the result of concatenating the string object that it references and `!`, which is `Written Assessment!`. On line 3, the mutating method `downcase!` is called on the string object that `str` references. `downcase!` turns all the letters of the caller string lowercase, so the return value of line 3 is `written assessment!`.

On line 10, the method `puts` is called on the string object that `test_str` references as argument. `test_str` references `'Written Assessment'`. Calling `test` with `test_str` on line 8 did not change nor mutate the string object that `test_str` references, because inside the method the parameter is reassigned a different string object, avoiding `downcase!` having its mutating effect on the original string object that is passed in as the arugment for `test`. Therefore, line 10 outputs `Written Assessment` on the console.