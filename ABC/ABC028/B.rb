a_to_f = {}

('A'..'F').to_a.each do |alp|
  a_to_f[alp] = 0
end

gets.chomp.chars.each do |i|
  a_to_f[i] += 1
end

strs = []

a_to_f.each_value do |count|
  strs.push(count.to_s)
end

puts strs.join(' ')
