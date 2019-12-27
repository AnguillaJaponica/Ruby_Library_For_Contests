n = gets.to_i
total = 0

n.times do
  x, u = gets.split
  if u == 'JPY'
    total += x.to_f
  else
    total += x.to_f * 380000.0
  end
end

puts total