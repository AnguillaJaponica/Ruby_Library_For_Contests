# 入出力
 = gets.split.map(&:to_i)


# 文字列を一文字ずつの文字の配列にする
str.chars

# ２進数にする
255.to_s(2) # 11111111

# 最小公倍数
625.lcm(735)

# 最大公約数
625.gcd(735)

# 最大公約数と最小公倍数を同時に求めて配列で返す。
624.gcdlcm(735)

# 1文字ずつ分解
str.split('')

# 配列に含まれる要素の種類の数
# 文字列にuniqは使えない
array.uniq.length

# 3桁表示で、ない分は0を埋める
sprintf"%03d", i

# 素数判定
def check_prime(num)
  case num
  when 1 then
    false
  when 2 then
    true
  else
    (2..(num-1)).each do |index|
      if num % index == 0
        return false
      end
    end
    return true
  end
end

# 文字列一つ一つのループ
str.each_char

# 幅優先探索
# 深さ優先探索
# 入力が地図のパターン
#
#
h, w = gets.split.map(&:to_i)
c = h.times.map {gets.chomp} # 文字列の配列
c = h.times.map {gets.chomp.chars} # 一文字ずつ切る
c = gets.split(' ').map(&:to_i) # 数値の場合

# 戦闘だけ大文字
str.capitalize

# 小文字化
str.downcase
# 大文字化
str.upcase

# 入力が二次元配列のパターン
h, w = gets.split.map(&:to_i)
a = h.times.map {gets.split.map(&:to_i)}

# 入力が幅と高さのみ。二次元配列を自分で作る場合。
h, w = gets.split.map(&:to_i)
a = h.times.map{|i|
  w.times.map {|j|
    # i,jによる初期値
    # i == j ? 1 : 0 単位行列
  }
}

# 配列の奇数番目や偶数番目を取り出して新たな配列にする
odd = ary.group_by{|i| i%2}[1]
even = ary.group_by{|i| i%2}[0]

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
p "処理概要 #{Time.now - start_time}s" # 最後に挿入

# 階乗
(1..n).inject(1,:*)
