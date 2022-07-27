n = gets.to_i
pairs = []
n.times do
  pairs << gets.split.map(&:to_i)
end

count = 0
ans = 'No'
pairs.each do |p|
  if p[0] == p[1]
    count += 1
  else
    if count >= 3
      ans = 'Yes'
      break
    end
    count = 0
  end
end

puts ans