n = gets.to_i
heights = gets.split.map(&:to_i)
ans = 'Yes'

highest = heights[0]

heights.each do |h|
  if h >= highest
    highest = h
  elsif h + 1 >= highest
    highest = h + 1
  else
    ans = 'No'
    break
  end
end

puts ans