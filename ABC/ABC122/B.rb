s = gets.chomp.chars
atgc = ['A', 'T', 'G', 'C']
parts_length = []
count = 0

s.each do |str|
  if !atgc.include?(str)
    parts_length.push(count)
    s.slice!(0..s.index(str))
    count = 0
  else
    count += 1
  end
end

puts parts_length.max