o = gets.chomp.chars
e = gets.chomp.chars
total_length = o.length + e.length
ans = []

(0...total_length).each do |i|
  if i % 2 == 0
    ans.push(o[i/2])
  else
    ans.push(e[(i-1)/2])
  end
end

puts ans.join