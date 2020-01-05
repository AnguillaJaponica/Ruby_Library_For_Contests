str = gets.chomp.chars

str.each do |s|
  if s == 'A'
    count = 1
    unless s == 'Z'
      count += 1
    end
  end

end