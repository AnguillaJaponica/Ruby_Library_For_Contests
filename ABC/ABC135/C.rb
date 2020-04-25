n = gets.to_i
monsters = gets.split.map(&:to_i)
warriors = gets.split.map(&:to_i)
count = 0

(0..n-1).each do |i|
  count += [monsters[i], warriors[i]].min
  warriors[i] = [warriors[i] - monsters[i], 0].max
  count += [monsters[i+1], warriors[i]].min
  monsters[i+1] = [monsters[i+1] - warriors[i], 0].max
end

puts count