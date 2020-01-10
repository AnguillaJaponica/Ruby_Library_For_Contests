n = gets.to_i
votes = []
n.times do
  votes.push(gets.chomp)
end
members = votes.uniq

numbers = {}

members.each do |member|
  numbers[member] = votes.count(member)
end

puts numbers.sort{|(k1, v1), (k2, v2)| v2 <=> v1}[0][0]
