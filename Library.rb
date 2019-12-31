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

# 幅優先探索
# 深さ優先探索
# 入力が地図のパターン

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
p "処理概要 #{Time.now - start_time}s" # 最後に挿入

# 階乗
(1..n).inject(1, :*)
