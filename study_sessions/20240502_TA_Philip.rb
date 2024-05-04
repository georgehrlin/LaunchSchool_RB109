a = ['a', 'b', 'c']
p a.object_id
p a[0].object_id
a[0] = 'A'
p a
p a.object_id
p a[0].object_id

puts "-----"

b = [1, 2, 3]
p b.object_id
p b[0].object_id
b[0] = 100
p b
p b.object_id
p b[0].object_id

puts "-----"

b = 'maxwell'
b[0] = 'z'
puts b

puts "-----"

c = { s: 'a', r: 'a', h: '' }
p c.object_id
p c[:s].object_id
c[:s] = 'z'
p c
p c.object_id
p c[:s].object_id

puts "-----"

d = 'abc'
p d.object_id
p d[0].object_id
p d[0].object_id
p d[0].object_id
d[0] = 'A'
p d
p d.object_id