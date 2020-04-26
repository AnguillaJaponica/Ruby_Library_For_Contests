n, m = gets.split.map(&:to_i)
values = gets.split.map(&:to_i)
total_v = values.inject(:+)
count = 0

values.each do |v|
  if v >= total_v.to_f / (4 * m)
    count += 1
  end
end

if count >= m
  puts 'Yes'
else
  puts 'No'
end