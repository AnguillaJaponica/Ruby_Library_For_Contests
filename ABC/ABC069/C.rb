n = gets.to_i
array = gets.split.map(&:to_i).sort

if array[1..-1].all?{|i| i % 2 == 0}
  puts 'Yes'
else
  puts 'No'
end