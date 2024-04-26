```ruby
a = "Hello"

if a
  puts "Hello is truthy"
else
  puts "Hello is falsey"
end
```
This code outputs `Hello is truthy` on the console.

On line 1, local variable `a` is initialized to referece the string object `"Hello"`.

On line 3, there is a conditional statement with `if` as the keyword and `a` as the condition. `a` is always truthy, so the next line, line 4, gets executed. On line 4, the method `puts` is called with `"Hello is trthy"` as the argument. Therefore, line 4 returns `nil` and outputs `Hello is truthy` on the console.