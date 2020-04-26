n = gets.chomp.chars
ans = 'No'

n.each do |i|
  if i == '7'
    ans = 'Yes'
  end
end
puts ans