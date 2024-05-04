```ruby
# Example 3
selected_foods = [['apple', 'kiwi'], ['artichoke', 'broccoli']].select do |arr|
                  arr.select do |food|
                    food.start_with?('a')
                  end
                end

p selected_foods
```
On line 1, the `select` method is called on a nested aray. A `do...end` block is passed as an argument to the `select` method call. On each iteration, a subarray is passed into the block and is bound to the block parameter `arr`.

On line 2, the `select` method is called on the subarray referenced by block local variable `arr`. The inner `select` is passed a `do...end` block as an argument. On each iteration, one subarray element—a string object—is passed into the block and is bound to the block parameter `food`.

On line 3, the `start_with?` method is called on the string object referenced by the block local vairbale `food`, and passed the string object `'a'` as an argument. On each iteration, this method call evaluates the caller object and returns a boolean: `true` if the string begins with `'a'`, `false` if it doesn't.

`select` works by selecting those objects for which the block iteration returns a truthy value and returning them in a new array. In this case, the inner `select` will return `['apple']`, and ignore `'kiwi'`, which returns false. On the second iteration, it will return `['artichoke']` and, ignore `'broccoli'`.

The arrays returned by the inner `select` become the content of the block of the outer `select`. Since each of these returned new arrays has a truthy value, each iteration of the outer `select` block will return `true`. The entire subarray is selected and returned in a new nested array.

On line 1, the local variable `selected_foods` is initialized to reference the return value of this nested iteration.

Finally, on line 7, the `p` method is invoked and passed the nested array referenced by `selected_foods` as argument. This method call both outputs and returns a copy of the original nested array.

This code example demonstrates the importance of understanding how block return values are used to perform selection of collection objects with the method `select`.