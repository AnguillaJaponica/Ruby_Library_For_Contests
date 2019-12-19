n = gets.to_i
k = gets.to_i
x = gets.to_i
y = gets.to_i

if n <= k
  puts x * n
else
  puts x * k + y * (n - k)
end