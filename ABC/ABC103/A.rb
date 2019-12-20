array = gets.split.map(&:to_i)
array.sort!
puts array[1] - array[0] + array[2] - array[1]