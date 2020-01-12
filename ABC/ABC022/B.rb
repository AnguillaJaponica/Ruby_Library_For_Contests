n = gets.to_i
count = 0
flowers = []
n.times do
  flowers.push(gets.to_i)
end

puts n - flowers.uniq.count