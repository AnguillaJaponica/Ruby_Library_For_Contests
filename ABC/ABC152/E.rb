n = gets.to_i
a_array = gets.split.map(&:to_i)

lcm_num = 0
ans = 0

(0...a_array.length-1).each do |i|
  lcm_num = a_array[i].lcm(a_array[i + 1])
end

a_array.each do |i|
  ans += lcm_num / i
end

puts ans