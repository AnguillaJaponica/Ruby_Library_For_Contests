def search_for_longest(str)
  count = 0
  counts = []
  atgc = ['A', 'T', 'G', 'C']
  str.length.times do |i|
    if atgc.include?(str[i])
      count += 1
    else
      counts.push(count)
      search_for_longest(str.slice!(i))
    end
  end
  return counts
end

s = gets.chomp
puts search_for_longest(s).max
