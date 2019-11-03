n, d = gets.split.map(&:to_i)

if n % (2*d+1) == 0
  puts n / (2*d+1)
else
  puts n / (2*d+1) + 1
end