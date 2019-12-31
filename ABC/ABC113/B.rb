n = gets.to_i
t, a = gets.split.map(&:to_i)
height_set = gets.split.map(&:to_i)
mean_temp_set = {}

n.times do |i|
  mean_temp_set[i+1] = t - height_set[i] * 0.006
end

mean_temp_set[0] = a
