def pow?(num)
  (num & (num - 1)).zero?
end

x = gets.to_i

(0..x).each do |i|
  if pow?(x-i)
    puts x-i
    break
  end
end
