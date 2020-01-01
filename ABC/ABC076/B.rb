n = gets.to_i
k = gets.to_i
values = []

combinations = [true, false].repeated_combination(n).to_a

combinations.each do |combi|
  value = 1
  combi.each do |bool|
    if bool
      value *= 2
    else
      value += k
    end
  end
  values.push(value)
end

puts values.min