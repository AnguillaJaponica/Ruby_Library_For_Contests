n = gets.to_i
heights = gets.split.map(&:to_i)
height_set = {}
(0..n-1).each do |i|
  height_set[i] = heights[i]
end

height_set = height_set.sort{|a, b| b[1]<=>a[1]}

height_set.each do |i, val|
  puts i + 1
end