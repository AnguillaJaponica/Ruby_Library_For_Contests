n = gets.to_i
songs = {}

n.times do
  s, t = gets.split
  t = t.to_i
  songs[s] = t
end

x = gets.chomp


songs.each_key do |name|
  if name == x
    songs.delete(name)
    break
  end
  songs.delete(name)
end

total = 0
songs.each_value do |v|
  total += v
end

puts total
