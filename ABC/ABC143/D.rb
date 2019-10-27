n = gets.to_i
lines = (gets.split(' ').map(&:to_i)).sort!.reverse!
total = 0

(0..(n-3)).each do |i|
  if lines[i] < lines[i+1] + lines[i+2]
    total += 1
  end
end

puts total