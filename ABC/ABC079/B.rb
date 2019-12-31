def fib3(n)
  return 2 if n == 0
  return 1 if n == 1
  fib1 = 2
  fib2 = 1
  (n - 1).times do
    fib3 = fib1 + fib2
    fib1 = fib2
    fib2 = fib3
  end
  fib2
end

n = gets.to_i
puts fib3(n)