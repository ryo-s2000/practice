puts __FILE__
puts __LINE__
puts 'name'.object_id

a = 'hello'
b = 'hello'

puts a.object_id
puts b.object_id

c = b
puts c.object_id


def get_object_id(object)
  puts object.object_id
end

get_object_id(b)
get_object_id(c)

puts a.equal?(b)
puts b.equal?(c)

d = 'hello'
e = 'hello'
f = e

def m!(object)
  object.upcase!
end

m!(f)

puts "a=#{d}"
puts "b=#{e}"
puts "c=#{f}"
