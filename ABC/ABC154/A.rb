p, q = gets.split.chomp
nump, numq = gets.split.map(&:to_i)
str = gets.chomp

if str == p
  puts "#{nump-1} #{numq}"
elsif str == q
  puts "#{nump} #{numq-1}"
end