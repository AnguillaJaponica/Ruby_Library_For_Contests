n = gets.to_i
numbers = gets.split.map(&:to_i).map(&:abs)

manhattan = numbers.sum
euclid = Math.sqrt(numbers.map {|i| i ** 2}.sum)
chev = numbers.max

[manhattan, euclid, chev].each do |ans|
  puts ans
end
