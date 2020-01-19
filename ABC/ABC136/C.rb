n = gets.to_i
heights = gets.split.map(&:to_i)
ans = 'Yes'

(0...heights.length - 1).each do |i|
  if heights[i + 1] - heights[i] == 1
    heights[i + 1] -= 1
  elsif heights[i + 1] - heights[i] >= 2
    ans = 'No'
    break
  end
end

puts ans