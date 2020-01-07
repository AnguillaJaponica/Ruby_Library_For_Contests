s = gets.chomp.chars.sort
t = gets.chomp.chars.sort.reverse

if s.join < t.join
  puts 'Yes'
else
  puts 'No'
end
