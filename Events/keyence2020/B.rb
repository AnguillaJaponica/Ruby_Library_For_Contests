n = gets.to_i
robots = {}
n.times do
  x, l = gets.split.map(&:to_i)
  robots[x] = l
end

robot_range_arrays = []
robots.each do |x_coordinate, arm|
  robot_range_arrays << (x_coordinate-arm+1..x_coordinate+arm+1).to_a
end

cover_counts = []
all_points = robot_range_arrays.sort.flatten
start_point = all_points[0]

all_points.uniq.each do |point|
  cover_counts << all_points.count(point)
end

count = 0
robot_range_arrays.each do |array|
  array.each do |i|
    cover_counts[i + start_point.abs] -= 1
  end
  if cover_counts.all?{|e| e == 1}
    break
  else
    count += 1
  end
end

puts robot_range_arrays.length - count