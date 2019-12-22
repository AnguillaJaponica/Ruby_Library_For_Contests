A = gets.to_i
B = gets.to_i
N = gets.to_i

lcm = A.lcm(B)

if N % lcm == 0
  puts N
else
  puts (N / lcm + 1) * lcm
end