puts sprintf("%0.3f",1.2)

puts (~0b1010).to_s(2)
puts (0b1010 & 0b1100).to_s(2)
puts (0b1010 | 0b1100).to_s(2)
puts (0b1010 >> 1).to_s(2)
puts (0b1010 << 1).to_s(2)
puts 2e-3
puts (0.3 - 0.5i).class

name1 = false
name2 = 'Tom'
name3 = false

user_name = (name1 || name2 || name3)

def puts_name(name)
  puts name
end

!(user_name.nil?) and puts_name user_name

def send_message(message)
  message or return 'there is not message'
  if !(message.nil?)
    return message
  end
end

puts send_message("メッセージ送ってやるぞおおおおおおおおおお！！！！")
puts send_message(nil)
