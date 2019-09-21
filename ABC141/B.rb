str = gets.chomp.split('')

(0..str.length-1).each do |i|
  if i % 2 == 0
    unless str[i] == 'R' || str[i] == 'U' || str[i] == 'D'
      puts 'No'
      return
    end
  end

  if i % 2 == 1
    unless str[i] == 'L' || str[i] == 'U' || str[i] == 'D'
      puts 'No'
      return
    end
  end
end

puts 'Yes'
