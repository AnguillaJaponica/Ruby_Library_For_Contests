n, k = gets.split.map(&:to_i)
array = gets.split.map(&:to_i).sort
minus = []
not_minus = []
numbers = []

array.each do |i|
  if i < 0
    minus << i
  else
    not_minus << i
  end
end

if minus.size == 0
  (0..not_minus.size-1).each do |i|
    not_minus[i+1..-1].each do |j|
      if numbers.size != k
        numbers << i * j
      else
        break
      end
    end
  end
else
  not_minus.sort.reverse.each do |i|
    minus.each do |j|
      if numbers.size != k
        numbers << j * i
      else
        exit
      end
    end
  end
end

puts numbers