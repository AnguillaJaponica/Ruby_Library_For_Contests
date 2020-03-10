n = gets.to_i
monsters = gets.split.map(&:to_i).sort.reverse
warriors = gets.split.map(&:to_i).reverse
count = 0

(0..n - 1).each do |i|
  rest = warriors[i] - monsters[i]
  if rest > 0
    count += warriors[i]
    monsters[i] -= warriors[i]
    monsters[i + 1] -= rest
  else
    warriors
    monsters[i] -= warriors[i]
  end
end

puts count
