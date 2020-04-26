n, m = gets.split.map(&:to_i)
works = gets.split.map(&:to_i)
total = 0

works.each do |w|
  total += w
  if total > n
    puts -1
    exit
  end
end

puts n - total