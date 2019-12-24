a = gets.to_i
b = gets.to_i

a_to_9 = 9 - a + 1
b_to_9 = 9 - b + 1
ab_distance = (a - b).abs

puts [ab_distance, a + b_to_9, b + a_to_9].min