towers = []
5.times do
  towers.push(gets.to_i)
end

k = gets.to_i

if towers[4] - towers[0] <= k
  puts 'Yay!'
else
  puts ':('
end