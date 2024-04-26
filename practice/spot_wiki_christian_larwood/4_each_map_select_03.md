```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.select do |n|
  n + 1
end

p new_array
```
Line 7 both returns and outputs `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`.

The local variable `arr` is initialized on line 1 to reference the array object `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`.

On line 3, the local variable `new_array` is initialized to reference the return value of calling the method `select` on the array object that `arr` references, with a block and `n` as the block parameter. `select` iterates through its caller array and passes each element to the block as argument, which the block parameter then references. After the iterations, `select` returns a new array the elements of which the block evaluated to be truthy with. Within the block, on line 4, the integer object that `n` references is incremented by `1`. Line 4 returns an integer object, which is always truthy. Therefore, `arr.select` returns a new array object that has all the elements contained by the original argument array, because the block is truthy with all of the orignal argument array's elements.

Therefore, `new_array` references `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`.

On line 7, the method `p` is called on the array object that `new_array` references and outputs `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]` on the console.