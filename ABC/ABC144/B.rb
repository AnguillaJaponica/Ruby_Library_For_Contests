n = gets.to_i
kuku = []

(1..9).each do |a|
  (1..9).each do |b|
    kuku.push(a * b)
  end
end

if kuku.include?(n)
  puts 'Yes'
else
  puts 'No'
end