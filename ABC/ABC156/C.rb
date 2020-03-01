n = gets.to_i
cors = gets.split.map(&:to_i).sort

total1 = 0
total2 = 0

point1 = cors.inject(:+) / n
point2 = point1 + 1

cors.each do |c|
  total1 += (c - point1) ** 2
  total2 += (c - point2) ** 2
end

if total1 > total2
  puts total2
else
  puts total1
end