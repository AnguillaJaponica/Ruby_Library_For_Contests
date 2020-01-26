h, n = gets.split.map(&:to_i)
attacks = []
cost = []
n.times do
  a, b = gets.split.map(&:to_i)
  attacks << a
  cost << b
end

pairs.sort_by