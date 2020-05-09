n = gets.to_i
a = [1, 2, 3, 4, 5, 6]
(n % 30).times {|i|
  ary = a[i % 5]
  a[i % 5] = a[i % 5 + 1]
  a[i % 5 + 1] = ary
}
puts a.join
