def cutting(str, startpoint)
  if str[startpoint] == str[startpoint+1]
    str.slice!(startpoint)
  else
    false
  end
end

n = gets.to_i
s = gets.chomp
startpoint = 0

n.times do
  if cutting(s, startpoint) == false
    startpoint += 1
    next
  end
  cutting(s,startpoint)
end

puts s.length