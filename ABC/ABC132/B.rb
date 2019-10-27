n = gets.to_i
permutation = gets.split(' ').map(&:to_i)
count = 0

(1..(n-2)).each do |idx|
  if (permutation[idx - 1] < permutation[idx] && permutation[idx] < permutation[idx + 1]) || (permutation[idx - 1] > permutation[idx] && permutation[idx] > permutation[idx + 1])
    count += 1
  end
end

puts count