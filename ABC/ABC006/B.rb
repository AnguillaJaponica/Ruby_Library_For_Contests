def tribonacci(n)
  return 0 if n <= 2
  return 1 if n == 3
  num1 = 0
  num2 = 0
  num3 = 1
  tmp = 1

  (n-3).times do
    tmp = (num1 + num2 + num3) % 10007
    num1 = num2
    num2 = num3
    num3 = tmp
  end
  tmp
end

n = gets.to_i
puts tribonacci(n)