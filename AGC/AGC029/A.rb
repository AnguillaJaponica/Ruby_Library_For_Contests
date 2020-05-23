s = gets.chomp.chars
counts = []
count = 0
s.each do |m|
  if m == 'B'
    count += 1
  else
    counts << count
  end
end

if s.all?{|e| e == 'B'}
  puts 0
else
  puts counts.inject(:+)
end
