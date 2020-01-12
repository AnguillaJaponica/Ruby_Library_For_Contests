a, b, c = gets.split.map(&:to_i)
num = 10 ** 9 + 7

puts a % num * b % num * c % num