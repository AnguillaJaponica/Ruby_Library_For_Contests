w, h= gets.split.map(&:to_i)

if w % 16 == 0 && h % 9 == 0
  puts '16:9'
elsif
  w % 4 == 0 && h % 3 == 0
  puts '4:3'
end