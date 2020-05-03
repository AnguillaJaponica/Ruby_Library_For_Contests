n, m = gets.split.map(&:to_i)
heights = gets.split.map(&:to_i)
roads = []
count = 0
m.times do
  roads << gets.split.map(&:to_i)
end

towers = {}

roads.each do |road|
  if towers[road[0]]
    towers[road[0]] << road[1]
  else
    towers[road[0]] = [road[1]]
  end

  if towers[road[1]]
    towers[road[1]] << road[0]
  else
    towers[road[1]] = [road[0]]
  end
end

tower_count = 0
towers.each do |key, value|
  tower_count += 1
  tower_height = heights[key-1]
  if value.all?{|v| heights[v-1] < tower_height}
    count += 1
  end
end

puts count + (n-tower_count)