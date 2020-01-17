n = gets.to_i
ans = 'No'

(0..25).each do |i|
  (0..14).each do |j|
    sum = 4 * i + 7 * j
    if sum > n || sum < n
      next
    else
      if sum == n
        ans = 'Yes'
        break
      end
    end
  end
end

puts ans