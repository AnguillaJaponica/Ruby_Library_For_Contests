s = gets.chomp.chars

if s.length == s.uniq.length
  puts 'yes'
else
  puts 'no'
end