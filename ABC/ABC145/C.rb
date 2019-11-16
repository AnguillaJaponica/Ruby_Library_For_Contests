n = gets.to_i
points = []
total = 0
divident = 0

n.times do
  x, y = gets.split.map(&:to_i)
  points.push([x,y])
end

[0..n-1].permutation(n).to_a.each do |array|
  divident += 1
  (0..n-1).each do |i|
    total += Math.sqrt((array[i][0] - array[i+1][0])**2 + (array[i][1] - array[i+1][1])**2)
  end
end

puts total.to_f / divident
