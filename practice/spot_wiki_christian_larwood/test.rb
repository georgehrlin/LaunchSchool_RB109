def change_name(name)
  name = 'bob' # does this reassignment change the object outside the method?
end

p name = 'jim'

p change_name(name)

puts name