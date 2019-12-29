s = gets.chomp.chars
t = gets.chomp
ans = 'No'

s.length.times do
  s = s.rotate!(1)
  if s.join('') == t
    ans = 'Yes'
  end
end

puts ans

