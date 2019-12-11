str = gets.chomp
if str.length == 1
  puts str.upcase!
else
  puts str[0].upcase! + str[1..-1].downcase!
end
