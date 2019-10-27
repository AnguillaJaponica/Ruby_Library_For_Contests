a, b = gets.split.map(&:to_i)

numbers = [a + b, a - b, a * b]
puts numbers.max