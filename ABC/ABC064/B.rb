n = gets.to_i
street = gets.split.map(&:to_i)

puts street.max - street.min