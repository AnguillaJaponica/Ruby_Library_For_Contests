n = 100
datasets = gets.split.map(&:to_i)
(1..100).each do |j|
  (0..j - 1).each do |i|
    maxv = [maxv, datasets[j] - datasets[i]].max
  end
end