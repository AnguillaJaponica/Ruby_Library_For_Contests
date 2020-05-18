a, b, h, m = gets.split.map(&:to_i)

passed_minites = 60 * h + m
a_deg = passed_minites.to_f * Math::PI / 360
b_deg = m.to_f * Math::PI / 30
puts Math.sqrt((a ** 2 + b ** 2 - 2 * a * b * Math.cos(a_deg-b_deg)))
