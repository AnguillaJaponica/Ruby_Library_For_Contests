n = gets.to_i
rice_cakes = []

n.times do
  rice_cakes << gets.to_i
end

kagamimochi = rice_cakes.sort
count = 0

(0...kagamimochi.length - 1).each do |i|
  if kagamimochi[i] != kagamimochi[i + 1]
    count += 1
  end
end

puts count + 1