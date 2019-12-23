a= readline.split.map(&:to_i)
b= a[0]+a[1]
if b >= 24
  puts b- 24
else puts b
end