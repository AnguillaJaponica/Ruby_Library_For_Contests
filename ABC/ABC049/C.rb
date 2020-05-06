s = gets.chomp
ans = 'YES'

loop do
  if s.size == 5
    if s != 'dream' && s != 'erase'
      ans = 'NO'
    else
      ans = 'YES'
    end
  end
  if s.size <4
    break
  end

  first_five = s[0..4]
  if first_five == 'dream'
    s = s[5..-1]
    if s[0..1] == 'er'
      s = [2..-1]
    elsif s[0] == 'e'
      next
    else
      ans = 'NO'
      break
    end
  elsif first_five == 'erase'
    s = s[5..-1]
    if s[0] == 'r'
      s = [1..-1]
    elsif s[0] == 'd'
      next
    else
      ans = 'NO'
      break
    end
  else
    ans = 'NO'
    break
  end
end

puts ans