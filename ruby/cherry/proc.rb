hello_proc = Proc.new do
  puts 'Hello!'
end
hello_proc.call

hey_proc = Proc.new { puts 'hey!' }
hey_proc.call

add_proc = Proc.new { |a=0, b=0| puts a + b }
add_proc.call(12, 15)
add_proc.call(12)
add_proc.call


def greeting(&block)
  puts block.class
  text = block.call('こんにちは')
  puts text
end

greeting do |name|
  name * 2
end

repeat_proc = Proc.new{ |text| text * 2 }
greeting(&repeat_proc)

def greeting_2(block)
  puts block.class
  text = block.call('こんにちは')
  puts text
end

repeat_proc = Proc.new{ |text| text * 2 }
greeting_2(repeat_proc)

def greeting_3(proc_1, proc_2, proc_3)
  puts proc_1.call('おはよう')
  puts proc_2.call('こんにちは')
  puts proc_3.call('こんばんは')
end

shuffle_proc  = Proc.new { |text| text.chars.shuffle.join }
repeat_proc   = Proc.new { |text| text * 2 }
question_proc = Proc.new { |text| "#{text}?" }

greeting_3(shuffle_proc, repeat_proc, question_proc)

add_proc_2 = Proc.new{|a, b| a.to_i + b.to_i}
p add_proc_2.call(10)
p add_proc_2.call(10, 20)
p add_proc_2.call(10, 20, 30)
p add_proc_2.class
p add_proc_2.lambda?

add_lambda = ->(a, b){ a.to_i + b.to_i }
# p add_lambda.call(10)
p add_lambda.call(10, 20)
# p add_lambda.call(10, 20, 30)
p add_lambda.class
p add_lambda.lambda?
