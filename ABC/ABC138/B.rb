n = gets.to_i
numbers = gets.split(' ').map(&:to_f)
sum = 0

numbers.each do |number|
  sum += 1 / number
end

puts 1 / sum