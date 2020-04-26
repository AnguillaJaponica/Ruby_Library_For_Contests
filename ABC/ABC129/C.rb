# 分割統治法/漸化式ループ
def fib3(n)
  return 1 if n == 0
  fib1 = fib2 = fib3 = 1
  (n - 1).times do
    fib3 = fib1 + fib2
    fib1 = fib2
    fib2 = fib3
  end
  fib2
end