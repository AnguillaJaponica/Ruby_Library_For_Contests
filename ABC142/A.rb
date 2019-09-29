n = gets.to_i

if n % 2 == 0
  puts 0.5
else
  puts (((n + 1) / 2).to_f / n)
end

