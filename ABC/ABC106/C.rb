s = gets.chomp.chars
k = gets.to_i
ans = '1'

s.each do |i|
  if i != '1'
    ans = i
    break
  end
end

if s[0...k].all?{|i| i == '1'}
  ans = '1'
end

puts ans