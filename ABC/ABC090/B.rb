a, b = gets.split.map(&:to_i)
count = 0

(a..b).each do |i|
  i = i.to_s
  count += 1 if i == i.reverse
end

puts count