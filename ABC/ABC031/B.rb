l, h = gets.split.map(&:to_i)
n = gets.to_i

n.times do
  a = gets.to_i
  if a >= l && a <= h
    puts 0
  elsif a > h
    puts -1
  else
    puts l - a
  end
end