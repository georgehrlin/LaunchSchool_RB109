```ruby
# Example 3
selected_foods = [['apple', 'kiwi'], ['artichoke', 'broccoli']].select do |arr|
                  arr.select do |food|
                    food.start_with?('a')
                  end
                end

7 p selected_foods
```
On line 1, a local variable `selected_food` is intialized to reference the return value of the code that spans from the rest of line 1 to line 5. The method `select` is called on a nested array that contains two arrays, both of which contain two string elements, with a block and `arr` as the block parameter.

On line 2, inside the block, the method `select` is called on the array object referenced by `arr` with a new block and `food` as the block parameter.

On line 3, inside the nested block, the method `start_with?` is called on the string object referenced by `food` with a string object `'a'` as argument. This method call returns `true` if and only if the string object's first letter is `'a'`; otherwise, it returns false.

Because the `select` method call on line 2 is inside the block of a higher-level `select` method block, it returns an array of arrays that only contain elements with which the code on line 3 evaluates to `true`. Therefore, the return value of line 2 is `[['apple'], ['artichoke']]`.

Now, the content of the block of the `select` method call on line 1 is `[['apple'], ['artichoke']]`, which always evaluates to truthy. Therefore, the method call simply returns the original, unedited nested array, which is assigned to local variable `selected_foods`.

On line 7, the method `p` is called with the array object referenced by `selected_foods` as argument. The return value is `[['apple', 'kiwi'], ['artichoke', 'broccoli']]`. The output is `[['apple', 'kiwi'], ['artichoke', 'broccoli']]`.