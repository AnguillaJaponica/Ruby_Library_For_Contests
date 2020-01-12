# メモ化再帰
def fib2(n)
  array = []
  return 1 if n <= 1
  if array[n]
    array[n]
  else
    array[n] = fib2(n - 1) + fib2(n - 2)
  end
end

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

# ハッシュソート
scores = {'Carol' => 90, 'Alice' => 50, 'Bob' => 60, 'David' => 40}
p scores.sort {|(k1, v1), (k2, v2)| v2 <=> v1}


# 3桁表示で、ない分は0を埋める
sprintf "%03d", i

# 特定の要素が出たら削除
consonants = ['a', 'i', 'u', 'e', 'o']
w = gets.chomp.chars

w.delete_if do |str|
  consonants.include?(str)
end

# 配列の全てが偶数ならそれぞれ2で割る
while numbers.all?(&:even?) do
  count += 1
  numbers = numbers.map { |number| number / 2 }
end

# 素数判定
def check_prime(num)
  case num
  when 1 then
    false
  when 2 then
    true
  else
    (2..(num - 1)).each do |index|
      if num % index == 0
        return false
      end
    end
    return true
  end
end

# 重複組み合わせ
combinations = [true, false].repeated_combination(n).to_a

# 組み合わせ
numbers.combination(3).to_a

# 順列
numbers.permutation(2).to_a

# 戦闘だけ大文字
str.capitalize

# 整数かの判定
if (/^[+-]?[0-9]+$/ =~ input)

sq = Math.sqrt(sum)
ans += 1 if sq % 1 == 0
# 小文字化
str.downcase
# 大文字化
str.upcase

# 入力が二次元配列のパターン
h, w = gets.split.map(&:to_i)
a = h.times.map {gets.split.map(&:to_i)}

# 入力が幅と高さのみ。二次元配列を自分で作る場合。
h, w = gets.split.map(&:to_i)
a = h.times.map {|i|
  w.times.map {|j|
    # i,jによる初期値
    # i == j ? 1 : 0 単位行列
  }
}

# 配列の奇数番目や偶数番目を取り出して新たな配列にする
odd = ary.group_by {|i| i % 2}[1]
even = ary.group_by {|i| i % 2}[0]

# 数値からなる配列のうち、奇数のものだけ・偶数のものだけとる
odd = ary.select(&:odd?)
even = ary.select(&:even?)

# Gooooogle→Gogle
'Gooooooogle'.squeeze

# 文字列→日時
require 'time'
Time.parse('2013-11-22')
DateTime.parse('2013-12-12')

# 処理時間を測りたい
start_time = Time.now
puts "処理概要 #{Time.now - start_time}s"
# 最後に挿入

# 階乗
(1..n).inject(1, :*)

# 文字列sに含まれる長さkの部分文字列を抽出する
s = gets.chomp.chars
k = gets.to_i
words = []
if k > s.length
  puts 0
else
  (0..s.length-k-1).each do |i|
    words.push(s[i..i+k-1])
  end
end

# 配列結合
[1,2,3].concat([4,5,6])
# => [1,2,3,4,5,6]

# a+b+c = dとなるようなものの洗い出し(a,b,cそれぞれに条件つき)
(0..k).each do |h|
  (0..k).each do |i|
    j = s - h - i
    if j <= k && 0 <= j
      count += 1
    end
  end
end

#コラッツ
def calc(x)
  if x.even? then
    x = x/2
  else
    x = (x*3)+1
  end
  x
end

# 回転
mat = [[1,2,3],[4,5,6],[7,8,9]]
mat.transpose.map(&:reverse)  #=> 右回転
mat.reverse.map(&:reverse)    #=> 180度回転
mat.transpose.reverse         #=> 左回転