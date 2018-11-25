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
