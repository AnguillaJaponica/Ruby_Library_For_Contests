n = gets.chomp

if n.chars.uniq.length == 1
  puts 'SAME'
else
  puts 'DIFFERENT'
end