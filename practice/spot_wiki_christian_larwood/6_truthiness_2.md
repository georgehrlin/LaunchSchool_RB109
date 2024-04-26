```ruby
def test
  puts "written assessment"
end

var = test

if var
  puts "written assessment"
else
  puts "interview"
end
```
This code outputs `written aseessment` and `interview` on the console on separate lines.

On line 5, the local variable `var` is initialized to reference the return value of calling the method `test`.

The method `test` is defined from line 1 to 3. Within the method, on line 2, the method `puts` is called with `"written assessment"` as the argument. Line 2 outputs `written assessment` on the console. `test` returns `nil` because the return value of `puts` is returned implicitly as the return value of `test`. Therefore, `nil` is assigned to `var` on line 5.

On line 7, there is a conditional statement with `if` as the keyword and `var` as the condition. `var` references `nil`, so the line that follows the keyword `else`, line 10, gets executed instead. On line 10, the method `puts` is called with `"interview"` as the argument. Therefore, line 10 outputs `interview` on the console.