n, m = gets.split.map(&:to_i)
ansl = 1
ansr = n
m.times do
  l, r = gets.split.map(&:to_i)
  ansl = l if ansl < l
  ansr = r if ansr > r
end

if ansr >= ansl
  puts ansr - ansl + 1
else
  puts 0
end