binary_num = gets.to_i.to_s(2)
puts binary_num.count('1')
(0..binary_num.length-1).each do |i|
  if binary_num[i] == '1'
    puts 2 ** i
  end
end