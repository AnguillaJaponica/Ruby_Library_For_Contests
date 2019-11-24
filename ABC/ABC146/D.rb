a, b, x = 10, 7, 100
ketas = (0..9).to_a
alt = []

ketas.each do |keta|
  if (x - b * keta) / a <= 0
    alt.push(0)
  elsif (x - b * keta) / a <= keta
    alt.push(a * (x - b * keta) / a + b * keta)
  end
end

puts alt.max