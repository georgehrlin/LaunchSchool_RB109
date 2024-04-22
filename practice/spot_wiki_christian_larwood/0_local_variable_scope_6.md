What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
arr = [1, 2, 3, 4]
counter = 0
sum = 0

loop do
  sum += arr[counter]
  counter += 1
  break if counter == arr.size
end 

puts "Your total is #{sum}"
```
Line 11 returns `nil`, because the method `puts` always returns `nil` when called.

Line 11 outputs `Your total is 10` on the console.

On line 1, the local variable `arr` is initialized to reference an array object `[1, 2, 3, 4]`.

On line 2, the local variable `counter` is initialized to reference an integer object `0`.

On line 3, the local variable `sum` is initialized to reference an integer object `0`.

On line 5, the method `loop` is called with a block that spans from line 5 to 9 as argument. In each iteration of the loop: on line 6, `sum` is reassigned the sum of the integer object that it references plus the integer object returned by using the indexing operator `[]` on the array that `arr` references, with the integer object that `counter` references as the index; on line 7, `counter` is reassigned the sum of the integer that it references plus `1`; on line 8, the keyword `break` follows an `if` conditional statement—`break` is used to exit the loop if the integer `counter` references is equal to the return value of calling the method `size` on the array object that `arr` references.

In the final iteration: `sum` references `10`; `counter` references `4`; `break` is used to exit the loop because `counter` is equal to the return value of calling `size` on `arr`, which is `4`.

On line 11, the method `puts` is called on a string object with an interpolation as argument. Line 11 returns `nil` and outputs `Your total is 10` on the console.

This code example demonstrates the concepts of using the method `loop` to create a loop, reassigning variables that are initialized in the outer scope from within the block of a method, and strings with interpolations.