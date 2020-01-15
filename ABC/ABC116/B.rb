s = gets.to_i
collatz = []
count = 1

(1..1000000).each do |i|
  if i.even?
    if collatz.include?(i / 2)
      break
    else
      collatz << i / 2
      count += 1
    end
  else
    if collatz.include?(3 * i + 1)
      break
    else
      collatz << 3 * i + 1
      count += 1
    end
  end
end

puts count