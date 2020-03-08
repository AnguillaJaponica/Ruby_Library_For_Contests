n, a, b = gets.split.map(&:to_i)

ans = n / (a + b)
rem = n % (a + b)

if rem > a
  puts a * ans + a
elsif rem == a
  puts a * ans
else
  puts a * ans + rem
end
