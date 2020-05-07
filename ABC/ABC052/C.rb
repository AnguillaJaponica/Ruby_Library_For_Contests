require 'prime'
primes = Hash.new(0)

n = gets.to_i
(2..n).each do |i|
  i.prime_division.each do |num, pow|
    if primes[num]
      primes[num] += pow
    end
  end
end
multi = 1
primes.each do |key, value|
  multi *= (value + 1)
end

puts multi % (10 ** 9 + 7)