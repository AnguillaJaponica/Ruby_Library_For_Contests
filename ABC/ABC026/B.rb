n = gets.to_i
radiuses = []

n.times do
  radiuses << gets.to_i
end

radiuses = radiuses.sort.reverse
total = 0
count = 0

radiuses.each do |i|
  total += i*i*Math::PI*(-1)**count
  count += 1
end

puts total