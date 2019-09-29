n, k = gets.split.map(&:to_i)
persons = gets.split(' ').map(&:to_i)
count = 0

persons.each do |person|
  if person >= k
    count += 1
  end
end

puts count