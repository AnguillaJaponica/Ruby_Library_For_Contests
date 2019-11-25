A, B, X = gets.chomp.split.map(&:to_i)

def price(num)
  A * num + B * (num.to_s.length)
end

p [(1..10**18 + 5).bsearch{|x| price(x) > X } - 1, 1000000000].min