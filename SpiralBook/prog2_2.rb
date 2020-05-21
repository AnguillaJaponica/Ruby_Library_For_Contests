n = 100
datasets = gets.split.map(&:to_i)

minv = datasets[0]
(1..n-1).each do |j|
  maxv = [maxv, datasets - minv].max
  minv = [minv, datasets[i]].min
end
