a, b, c = gets.strip.split.map(&:to_i)
(1..b).each do |i|
  if a * i % b == c
    puts "YES"
    exit
  end
end
puts "NO"
