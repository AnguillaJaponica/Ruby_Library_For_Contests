n = gets.to_i
zeinuki = (n / 1.08).floor

if (zeinuki * 1.08).floor == n
  puts zeinuki
elsif ((zeinuki + 1) * 1.08).floor == n
  puts zeinuki + 1
else
  puts ':('
end