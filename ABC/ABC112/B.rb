n,t = gets.split.map(&:to_i)
returnable_way_cost = []
c = 0

n.times do
  c, time = gets.split.map(&:to_i)
  if time <= t
    returnable_way_cost.push(c)
  end
end

if returnable_way_cost.length == 0
  puts 'TLE'
else
  puts returnable_way_cost.min
end
