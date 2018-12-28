a = [1, 2, 3]
p a.delete(100)

a.delete 100 do
  'NG'
end

a.delete (100) { 'NG' }

names =['tome', 'jon', 'mike']

san_names = names.map do |name|
  "#{name}さん"
end.join('と')

p san_names

sum = 0
5.times { |n| sum += n}
p sum

upto = []
10.upto(14){ |n| upto << n }
p upto

downto = []
14.downto(10) { |n| downto << n }
p downto

step = []
1.step(11, 2){ |n| step << n }
9.step(1, -2){ |n| step << n }
p step

while_numbers = []
while_numbers << 1 while while_numbers.size < 5
p while_numbers

b = []
b << 1 while false
p b
begin
  b << 1
end while false
p b

c = [10, 20, 30, 40]
until c.size <= 2
  c.delete_at(-1)
end
p c

sample_numbers = (1..10).map { |n| n * 1 }
loop do
  n = sample_numbers.sample
  puts n
  break if n == 5
end

break_numbers = [1, 2, 3, 4, 5].shuffle
i = 0
while i < break_numbers.size
  n = break_numbers[i]
  puts n
  break if n == 5
  i += 1
end

ret =
    while true
      break
    end
p ret

ret =
    while true
      break 123
    end
p ret

fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]

fruits.each do |fruit|
  numbers.shuffle.each do |n|
    puts "#{fruit}, #{n}"
    break if n == 3
  end
end

catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit}, #{n}"
      if fruit == 'orange' && n == 3
        throw :done
      end
    end
  end
end

ret =
    catch :foo do
      throw :foo, 123
    end
puts ret

def calc_with_break
  numbers = [1, 2, 3, 4, 5, 6]
  target  = nil
  numbers.shuffle.each do |n|
    target = n

    break if n.even?
  end
  target * 10
end

p calc_with_break

[1, 2, 3].each do |n|
  puts n
  return
end

numbers.each do |n|
  next if n.even?
  puts n
end

foods = ['ピーマン', 'トマト', 'セロリ']

foods.each do |food|
  printf "#{food}は好きですか？ =>"
  answer = ['はい', 'いいえ'].sample
  puts answer
  redo unless answer == 'はい'
end

count = 0
foods.each do |food|
  printf "#{food}は好きですか？ =>"
  answer = 'いいえ'
  puts answer

  count += 1

  redo if answer != 'はい' && count < 2

  count = 0
end
