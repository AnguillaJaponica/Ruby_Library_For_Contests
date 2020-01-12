n = gets.to_i
towns = {}

n.times do
  s,p = gets.split
  p = p.to_i
  towns[s] = p
end

total = 0
towns.each_value do |t|
  total += t
end

name = 'atcoder'

towns.each do |town_name, population|
  if population > total / 2
    name = town_name
  end
end

puts name