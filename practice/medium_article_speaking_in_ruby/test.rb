result = []
[['apple', 'kiwi'], ['artichoke', 'broccoli']].select do |arr|
  result <<  arr.select do |food|
    food.start_with?('a')
  end
end

p result