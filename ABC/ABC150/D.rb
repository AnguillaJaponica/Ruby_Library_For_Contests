n, m = gets.split.map(&:to_i)
numbers = gets.split.map(&:to_i)
ans = []

numbers.each do |a|
  ((a+a/2)..(a*m+a/2)).each do |x|
    if (x-a/2) % a == 0 && ((x-a/2) / a >= 1 && (x-a/2) / a <= m)
      ans.push((x-a/2) / a)
    end
  end
end

puts ans.uniq.length