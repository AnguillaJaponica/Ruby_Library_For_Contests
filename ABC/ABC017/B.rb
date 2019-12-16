x = gets.chomp

if x[-2..-1] == 'ch' || x[-1] == 'o' || x[-1] == 'k' || x[-1] == 'u' || x == ''
  puts 'YES'
else
  puts 'NO'
end