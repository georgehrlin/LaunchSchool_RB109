# Question 1
## My answer
Line 8 outputs the string `Hi` rather than `Hello` because `loop` does not
create its own scope. Therefore, after the variable `greeting` is initialized on
line 1 and assigned to the string `Hello`, line 4 is able to access `greeting`
and reassigns it to the string `Hi`. When line 8 outputs `greeting`, it refers
to `Hi`.

## Official Answer
The local variable `greeting` is assigned to the string `Hello` on line 1.
The `do..end` along side the `loop` method invocation on lines 3 to 6 define a
block, within which `greeting` is assigned to the string `Hi` on line 4.
The `puts` method is called on line 8 with the value of the variable `greeting`
passed to it as an argument, and since `greeting` is now assigned to `Hi`, this
is what is output.
This example demonstrates local variable scoping rules in Ruby, specifically the
fact that a local variable initialized outside of a block is accessible inside
the block.

# QUESTION 2
## My Answer
```ruby
a = "a"
b = "b"
c = a
a = b

p a
p c
```

In Ruby, variables are pointers to values. They contain references to values and
do not store values per se.
In my code snippet, the variable `a` is initialized on line 2 and assigned the
string `"a"`, then the variable `b` is initialized and assigned the string
`"b"` with the variable `c` also initialized and assigned the value that the
variable `a` points to, which is `"a"`.
On line 5, the variable `a` is reassigned the value that the variable `b` points
to, making the variable `a` now poitns to `"b"`.
The method `puts` is invoked on line 7 with the value that the variable `a`
points to passed in as the argument. The line outputs "b".
The method `puts` is invoked again on line 8 with the value that the variable
`c` points to passed in as the argument. The line outputs "a", even when the
variable `a` no longer points to "a". This is because `c` was assigned the
reference of pointing to `"a"` on line 4, instead of storing the value that `a`
has.

## Official Answer
```ruby
a = 'apple'
b = a
a = 'orange'
puts a # => 'orange'
puts b # => 'apple'
```
The local variable `a` is assigned to the string `apple` on line 1. On line 2,
`b` is assigned to the value that is referenced by local variable `a`. Therefore,
`b` is assigned `apple`. Then, on line 3, `a` is reassigned to the string
`orange`. The `puts` method is called on lines 4 and 5, with the variables `a`
and `b` passed, respectively. Since `a` is assigned to `orange`, and `b` is
assigned to `apple`, that is what is output.

This example demonstrates variables as pointers since variables are labels that
refer to memory addresses. Therefore, on line 2, when `b` is assigned to the
value of `a`, this means that `b` refers to the value `apple`; and, on line 3,
when variable `a` is reassigned, this does not affect the value referenced by
`b`.