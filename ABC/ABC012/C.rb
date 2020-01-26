n = 2025 - gets.to_i
1.upto(n) do |i|
  break if i > 9
  next if n % i != 0 || n / i > 9
  puts "#{i} x #{n/i}"
end
