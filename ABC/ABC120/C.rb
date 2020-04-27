s = gets.chomp.chars
red_count = s.count('0')
blue_count = s.count('1')
puts [red_count, blue_count].min * 2