a, b, x  = gets.split.map(&:to_i)

if x.between?(a, a+b)
  puts 'YES'
else
  puts 'NO'
end
