def odd_stepable?(strs)
  strs.each do |str|
    if str == 'R' || str == 'U' || str == 'D'
      return true
    else
      return  false
    end
  end
end

def even_stepable?(strs)
  strs.each do |str|
    if str == 'L' || str == 'U' || str == 'D'
      return true
    else
      return  false
    end
  end
end

str = gets.chomp.split('')

odd_strs = str.group_by{|i| i%2}[1]
even_strs = str.group_by{|i| i%2}[0]
if odd_stepable?(odd_strs) && even_stepable?(even_strs)
  puts 'Yes'
else
  puts 'No'
end