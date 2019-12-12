a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i

if a >= b && c >= d
  puts b + d
elsif a <= b && c >= d
  puts a + d
elsif a >= b && c <= d
  puts b + c
elsif a <= b && c <= d
  puts a + c
end
