m, d = gets.split.map(&:to_i)

if m % d == 0
  puts 'YES'
else
  puts 'NO'
end