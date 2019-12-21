array = gets.split.map(&:to_i)
if array.count(5) == 2 && array.count(7) == 1
  p 'YES'
else
  p 'NO'
end
