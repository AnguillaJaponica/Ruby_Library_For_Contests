a, b, c, d = gets.split.map(&:to_i)

if (b.to_f/a) > (d.to_f/c)
  puts 'TAKAHASHI'
elsif (b.to_f/a) < (d.to_f/c)
  puts 'AOKI'
else
  puts 'DRAW'
end

