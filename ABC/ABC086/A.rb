if gets.split.map(&:to_i).inject(:*) % 2 == 0
  puts 'Even'
else
  puts 'Odd'
end
