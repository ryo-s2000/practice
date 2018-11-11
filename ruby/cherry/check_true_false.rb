def number?(number)
  number.class == Integer
end

puts number?(2)

string = 'ruby'

string.upcase
puts string

string.upcase!
puts string
