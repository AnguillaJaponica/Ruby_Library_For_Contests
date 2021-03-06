# 円周率
Math::PI

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

# ハッシュのデフォルト値(デフォルトが0になる)
n = Hash.new(0)

# 商とあまりを配列で返す
13.divmod(3) => [4, 1]

# 素因数分解
require 'prime'
12.prime_division => [[2, 2], [3, 1]]

# 3桁表示で、ない分は0を埋める
sprintf "%03d", i

# 特定の要素が出たら削除
consonants = ['a', 'i', 'u', 'e', 'o']
w = gets.chomp.chars

w.delete_if do |str|
  consonants.include?(str)
end

# 2のべき乗数判定
def pow?(num)
  (num & (num - 1)).zero?
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
# 条件によって一番小さいものを取ってくる
tastes = [1,2,3,4,5]
tastes.delete(tastes.min_by{|i| i.abs})

# 重複組み合わせ
combinations = [true, false].repeated_combination(n).to_a

# 組み合わせ
numbers.combination(3).to_a

# 順列
numbers.permutation(2).to_a

# 先頭だけ大文字
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

# 配列を二つに分ける
arr = ["cat", 123, "mouse", 0.99, :dog]
numbers, non_numbers = arr.partition {|item| item.kind_of?(Numeric) }

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
# 深さ優先探索(マインスイーパ)
h, w = gets.split.map(&:to_i)
# 平準化
# 自身を再帰的に平坦化する例。
  a = [1, [2, 3, [4], 5]]
  p a.flatten                     #=> [1, 2, 3, 4, 5]
  p a                             #=> [1, [2, 3, [4], 5]]

# 自身を破壊的に平坦化する例。
  a = [[[1, [2, 3]]]]
  p a.flatten!                    #=> [1, 2, 3]
  p a                             #=> [1, 2, 3]

# 平坦化が行われない場合は nil を返す。
  p [1, 2, 3].flatten!            #=> nil

# 平坦化の再帰の深さを指定する例。
  a = [ 1, 2, [3, [4, 5] ] ]
  a.flatten(1)              #=> [1, 2, 3, [4, 5]]

# 最大公約数
9.gcd(12)
# 最小公倍数
9.lcm(12)

# 文字列のなかでその文字列が該当する最初の箇所のインデックスを出してくる
puts "notification".index('fic') => 4

# 配列の被り部分
[1,2,3,4,5,6] & [3,4,5,6,7,8]
# => [3,4,5,6]

dx = [-1,0,1,-1,1,-1,0,1]
dy = [-1,-1,-1,0,0,1,1,1]

h.times do |i|
  w.times do |j|
    next if strings[i][j] == '#'
    counter = 0

    8.times do |k|
      x = i + dx[k]
      y = j + dy[k]
      counter += 1 if x >= 0 && x < h && y >= 0 && y < w && strings[x][y] == '#'
    end
    strings[i][j] = counter.to_s
  end
end

# 回転
mat = [[1,2,3],[4,5,6],[7,8,9]]
mat.transpose.map(&:reverse)  #=> 右回転
mat.reverse.map(&:reverse)    #=> 180度回転
mat.transpose.reverse         #=> 左回転

# ユークリッド互除法
def emdm(a, b)
  a, b = b, a % b while b > 0
  a
end
