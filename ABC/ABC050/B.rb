n = gets.to_i
solve_times = gets.split.map(&:to_i)
m = gets.to_i
drinks = {}
total = 0
m.times do
  p, x = gets.split.map(&:to_i)
  drinks[p] = x
end

drinks.each do |drink, time|
  total = 0
  solve_times.each do |t|
    total += t
  end
  total = total - solve_times[drink - 1] + time
  puts total
end

solve_times.each do |t|

end