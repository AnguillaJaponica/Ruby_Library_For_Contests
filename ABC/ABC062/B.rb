h, w = gets.split.map(&:to_i)
ans = []

ans.push('#'*(w+2))
h.times do
  ans.push('#'+"#{gets.chomp}"+'#')
end
ans.push('#'*(w+2))

puts ans.join("\n")
