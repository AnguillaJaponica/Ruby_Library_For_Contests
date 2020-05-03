n, m, q = gets.split.map(&:to_i)
num_sets = []
maximum = 0
q.times do
  num_sets << gets.split.map(&:to_i)
end

(1..m).to_a.repeated_combination(n) do |array|
  total = 0
  num_sets.each do |set|
    diff = array[set[1] - 1] - array[set[0] - 1]
    if diff == set[2]
      total += set[3]
    end
  end

  if maximum < total
    maximum = total
  end
end

puts maximum