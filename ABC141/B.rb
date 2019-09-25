str = gets.chomp

(0..(str.length-1)).each do |i|
  if i % 2 == 0
    if str[i] == 'L'
      puts 'No'
      exit
    end
  elsif i % 2 == 1
    if str[i] == 'R'
      puts 'No'
      exit
    end
  end
end

puts 'Yes'
