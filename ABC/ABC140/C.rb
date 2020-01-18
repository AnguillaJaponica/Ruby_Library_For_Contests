n = gets.to_i
b_array = gets.split.map(&:to_i)
b_array.unshift(10000000)
b_array.push(10000000)
a_array = Array.new(n, 0)

(n-1).times do |i|
  a_array[i] = [b_array[i], b_array[i+1]].min
end

puts a_array.inject(:+) + [b_array[-2], b_array[-1]].min