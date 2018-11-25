# puts [].class
# puts [1,2,322].length

# a = [1,2,3]
# a[5] = 10

# p a
# b = [1,2,3]
# b << 24
# p b
# b.delete_at(2)
# p b

# p 14.divmod(3)

# numbers = [232,2,32,22]
# sum = 0
# numbers.each do |number|
#   sum += number
# end
#
# puts sum

# numbers = [1,2,3,1,2,3]
# numbers.delete_if do |number|
#   number.odd?
# end
#
# p numbers

numbers = [1,2,3,4,5,6,7]
sum = 0
numbers.each { |n|
  sum_value = n.even? ? n*10 : n
  sum += sum_value
}

p sum

ten_times_numbers = numbers.map{|n| n*10}
p ten_times_numbers

even_numbers = numbers.select {|n| n.even?}
p even_numbers

not_even_numbers = numbers.reject {|n| n.even?}
p not_even_numbers

first_enen_number = numbers.find {|n| n.even?}
p first_enen_number

sum = numbers.inject(0){|result,n| result + n}
p sum

p ['Mon', 'Tue', 'Wed', 'Thi', 'Fry', 'Sat'].inject('Sun'){|resurl,n| resurl + n}

p (1..5).class
p (1..5).include?(1)

p numbers[3..5]

def liquid?(tem)
  (0..100).include?(tem)
end

p liquid?(-1)

def change(age)
  case age
  when 0..5
    0
  when 6..12
    300
  when 13..18
    1000
  else
    1500
  end
end

p change(10)

p (1..5).to_a
p [*1..5].class

(1..10).step(2).each{|mun| p mun}
