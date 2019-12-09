n = gets.to_i
item_prices = []

n.times do
  item_prices.push(gets.to_i)
end
sorted = item_prices.sort

puts sorted[-1]/2 + sorted[0..-2].inject(:+)

