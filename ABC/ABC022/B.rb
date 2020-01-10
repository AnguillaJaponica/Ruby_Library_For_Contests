n = gets.to_i
flowers = []
fertilized = []
n.times do
  flowers.push(gets.to_i)
end

flowers.uniq.each do |flower|
  if flowers.count(flower) >= 2
    fertilized.push(flower)
  end
end

puts fertilized.uniq.length