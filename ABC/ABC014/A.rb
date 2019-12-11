a = gets.to_i
b = gets.to_i

if a % b == 0
  puts 0
else
  puts b - a % b
end
