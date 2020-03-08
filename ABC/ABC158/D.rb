s = gets.chomp
q = gets.to_i
queries = []
ans = s.chars
q.times do
  queries << gets.split
end

switch1 = false
switch2 = ans.size % 2 == 0

queries.each do |query|
  if query[0] == '1'
    switch1 = true
  else
    if query[1] == '1'
      if switch1
        ans << query[2]
      else
        ans.unshift(query[2])
      end
    else
      if switch1
        ans.unshift(query[2])
      else
        ans << query[2]
      end
    end
  end
  switch2 = ans.size % 2 == 0
end

if ans.length % 2 != 0
  puts ans.join('')
else
  puts ans.reverse.join('')
end
