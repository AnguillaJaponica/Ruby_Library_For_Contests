a, b = gets.split.map(&:to_i)

if (1..12).to_a.include?(a) && (1..12).to_a.include?(b)
  if a > b
    puts 'Alice'
  elsif a < b
    puts 'Bob'
  else
    puts 'Draw'
  end
elsif a == 13 && b == 13
  puts 'Draw'
elsif a == 13 && b == 1
  puts 'Bob'
elsif a == 13 && b != 1
  puts 'Alice'
elsif b == 13 && a == 1
  puts 'Alice'
elsif b == 13 && a != 1
  puts 'Bob'
end