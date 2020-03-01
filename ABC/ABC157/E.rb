n = gets.to_i
s = gets.chomp
q = gets.to_i
queries = []
ans = []

q.times do
  queries << gets.split
end

queries.each do |query|
  if query[0] == '1'
    s[query[1].to_i - 1] = query[2]
  elsif query[0] == '2'
    ans << s[(query[1].to_i-1)..(query[2].to_i-1)].chars.uniq.size
  end
end

ans.each do |a|
  puts a
end