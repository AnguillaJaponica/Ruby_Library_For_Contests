s = gets.chomp
new_strs = []

(0...s.length).each do |i|
  if i.even?
    new_strs.push(s[i])
  end
end

puts new_strs.join