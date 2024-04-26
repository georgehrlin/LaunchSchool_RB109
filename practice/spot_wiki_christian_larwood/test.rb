arr = [1, 2, 3, 4, 5]

new_array = arr.map do |n|
  n > 1
end

p new_array