n = gets.to_i

if n.to_s.include?('3') || n % 3 == 0
  puts 'YES'
else
  puts 'NO'
end