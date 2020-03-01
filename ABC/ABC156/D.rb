n, a, b = gets.split.map(&:to_i)
total = 2 ** n - 1

puts (total - [1..n].combination(a).to_a.size - [1..n].combination(b).to_a.size) % (10 ** 9 + 7)

