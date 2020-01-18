n, m = gets.split.map(&:to_i)
students = []
n.times do
  students << gets.split.map(&:to_i)
end
checkpoints = []
m.times do
  checkpoints << gets.split.map(&:to_i)
end

students.each do |x, y|
  puts checkpoints.index(checkpoints.min_by {|item| (item[0] - x).abs + (item[1] - y).abs}) + 1
end
