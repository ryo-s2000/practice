a = [1, 2, 3, 4, 5]
p a[2, 4]
p a.values_at(1, 3)
p a[a.size - 1]
p a[-1]
p a[-2]
p a[-2, 3]
p a.last
p a.first
# a.delete(2)
# p a
b = [5, 6, 7, 8]
# a.concat(b)
# p a
p "a | b #{a | b} 和集合"
p "a - b #{a - b}　差集合"
p "a & b #{a & b}　積集合"
p a, b

require 'set'

c = Set.new([1, 2, 3])
d = Set.new([4, 5, 6])

p c | d
p c - d
p c & d

e, f = 100, 200, 300
p e, f

g, *h = 400, 500, 600
p g, h

p a.push(*b)

def greeting(*names)
  "#{names.join('と')}、こんにちは"
end

p greeting('mikel')
p greeting('tom', 'mike')

p [c]
p [*c]

p [1, 2, 3] == [1, 2, 3]
p [1, 2, 3] == [4, 5, 6]

p %w(pen apple)

p 'USA'.chars

new_york_times = 'Want climate news in your inbox? Sign up here for Climate Fwd:, our email newsletter.

    HANOI, Vietnam — Coal, the fuel that powered the industrial age, has led the planet to the brink of catastrophic climate change.'

p new_york_times.split

five_zero = Array.new(5, 0)
p five_zero

one_three = Array.new(12){ |n| n % 3 + 1}
p one_three

upcase = Array.new(5, 'default')
p upcase
up = upcase[0]
p up
up.upcase!
p upcase

upcase_block = Array.new(5){ 'default' }
p upcase_block
up_block = upcase_block[0]
p up_block
up_block.upcase!
p upcase_block

fruits = ['apple', 'grape', 'banana']
fruits.delete_if.with_index(1) do |fruit, i|
  fruit.include?('a') && i.odd?
end

p fruits

dimensions = [
    [20, 10],
    [30, 50],
    [40, 70]
]

areas = []
dimensions.each do |length, width|
  areas << length * width
end
p areas

dimensions.each_with_index do |(length, width), i|
  p "i:#{i} areas:#{length * width}"
end
