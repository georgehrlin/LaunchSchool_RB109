a = ["foo", "bar", "baz"]
b = a
c = b[0]         # c points to "foo"

p b[0].object_id
p b[0].object_id
p b[0].object_id

a[0].upcase!     # a points to ["FOO", "BAR", "BAZ"]

c[0].downcase!
# c[0] is b[0][0], which is "F" (before downcase!)
# After downcase!, "f" is returned
# The hash remains the same after downcase! because when [] is called on a string, it returns a new string

p c[0].object_id
p c[0].object_id
p c[0].object_id

p c # Output: 
p b # Ouput: ["FOO", "BAR", "BAZ"]