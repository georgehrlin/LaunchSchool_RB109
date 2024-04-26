```ruby
a = "hello"

[1, 2, 3].map { |num| a }
```
Line 3 returns `["hello", "hello", "hello"]`.

On line 1, the local variable `a` is initialized to reference a string object `"hello"`.

On line 3, the method `map` is called on an array object `[1, 2, 3]`, with a block and `num` as the block parameter. `map` iterates through the elements of its caller array and passes each element as argument to the block. `map` returns a new array object, the elements of which are return values of the block. The block we have always returns `a`, which references `"hello"`. Therefore, the method call on line 3 returns `["hello", "hello", "hello"]`.