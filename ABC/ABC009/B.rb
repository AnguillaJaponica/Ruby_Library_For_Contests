n = gets.to_i
costs = []

n.times do
  costs.push(gets.to_i)
end

uniq_costs = costs.uniq

if uniq_costs.length == 1
  puts cost[0]
else
  puts uniq_costs.sort[-2]
end