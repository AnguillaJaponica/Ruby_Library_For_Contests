n = gets.to_i
array = gets.split.map(&:to_i).sort!

loop do
  if array.length > 1
    a, b = array.shift(2)
    array.push((a + b).to_f / 2)
    array.sort!
  else
    break
  end
end

puts array[0]
