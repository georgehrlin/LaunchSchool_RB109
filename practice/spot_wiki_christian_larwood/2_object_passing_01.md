```ruby
a = "hi there"
b = a
a = "not here"
```
### What are `a` and `b`?
On line 1, the local variable `a` is initialized to reference the string object `"hi there"`.

On line 2, the local variable `b` is initialized to reference the string object referenced by `a`, which is `"hi there"`.

On line 3, `a` is reassigned the string object `"not here"`.

Therefore, `a` now references `"not here"`. `b` now references `"hi there"`.

Instead of just values themselves, variables in Ruby contain references that point to objects that have values. Therefore, when `b` is initialized on line 2, it is assigned the refernce that `a` contains—the reference that points to `"hi there"`. That is also why, when `a` is reassigned `"not here"` on line 3, `a` is actually reassigned a different reference—a new reference that points to `"not here"`. The reference assigned to `b` is not changed. The reference that `b` has still points to `"hi there"`.

If variables in Ruby contain values directly without ever having to consider intermediary references, then `b` would be `"not here"` after the value of `a` changes on line 3, because `a` now "equals" `"not "here"`.