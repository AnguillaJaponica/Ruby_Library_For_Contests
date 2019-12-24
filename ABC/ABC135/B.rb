n = gets.to_i
array = gets.split.map(&:to_i)
sorted_array = array.sort

flag = false

array.combination(2) do |i, j|
  temp = i
  i = j
  j = temp

  if array == sorted_array
    flag = true
  end
end

if flag
  puts 'YES'
else
  puts 'NO'
end