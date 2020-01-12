dishes = Array.new
5.times { dishes << gets.chomp.to_i }
dishes = dishes.sort_by { |i| (i - 1) % 10 }
new_dishes = dishes.map do |dish|
  if dish % 10 == 0
    dish
  else
    dish = dish + (10 - (dish % 10))
  end
end
p dishes[0] + new_dishes[1..4].inject(:+)
