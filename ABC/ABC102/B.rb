n = gets.to_i
numbers = gets.split.map(&:to_i)
difference = []

numbers.combination(2) do |a, b|
  difference.push((a-b).abs)
end

puts difference.max