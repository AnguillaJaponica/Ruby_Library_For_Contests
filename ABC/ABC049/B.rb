h, w = gets.split.map(&:to_i)
bef = []
aft = []

h.times do
  bef.push(gets.split)
end

bef.each do |row|
  2.times do
    aft.push(row)
  end
end

aft.each do |row|
  puts "#{row.join}\n"
end