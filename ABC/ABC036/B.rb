n = gets.to_i
matrix = []

n.times do
  matrix.push(gets.chomp.chars)
end

matrix = matrix.transpose.map(&:reverse)
matrix.each do |m|
  puts "#{m.join}\n"
end