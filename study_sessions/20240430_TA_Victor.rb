a = ['foo', 'bar', 'baz']
b = a
c = b[0]
a[0].upcase!

p c # Output: "FOO"
p b # Output: ["FOO", "bar", "baz"]

def greeting
  puts "Hello"
end

# whatever = greeting == "xD" ? "ABC" : "123"

# p whatever

whatever = (if greeting == "xD"
  "ABC"
else
  "123"
end)

p whatever

marks = 65
grade = '';
marks > 40 ? (grade ='Pass!'; puts "Welldone!")
  : (grade = 'Pass!'; puts "Better luck next time.");

puts grade