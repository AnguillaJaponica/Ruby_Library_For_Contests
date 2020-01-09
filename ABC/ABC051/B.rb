k, s = gets.split.map(&:to_i)
count = 0

(0..k).each do |h|
  (0..k).each do |i|
    j = s - h - i
    if j <= k && 0 <= j
      count += 1
    end
  end
end

puts count