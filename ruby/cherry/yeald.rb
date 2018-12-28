def block
  if block_given?
    yield
  else
    puts 'block is null'
  end
end

block do
  puts 'hello'
end

block

puts '----------------------------'

def greeting
  text = yield 'こんにちは', 1234
  puts text
end

greeting do |text, number|
  "text:#{text * 2} number:#{number * 2}"
end

puts '----------------------------'

def get_block(&block)
  unless block.nil?
    text = block.call('こんにちは')
  else
    text = 'there is not block'
  end

  puts text
end

get_block do |text|
  text * 2
end

get_block{|text| text * 2}
get_block

puts '----------------------------'

def greeting_ja(&block)
  texts = ['おはよう', 'こんにちは', 'こんばんは']
  greeting_common(texts, &block)
end

def greeting_en(&block)
  texts = ['good morning', 'hello', 'good night']
  greeting_common(texts, &block)
end

def greeting_common(texts, &block)
  puts texts[0]

  puts block.call(texts[1])
  puts texts[2]
end

greeting_ja do |text|
  text * 2
end

greeting_en do |text|
  text * 2
end

puts '----------------------------'

def block_number(&block)
  text =
      if block.arity == 1
        yield 'こんにちは'
      elsif block.arity == 2
        yield 'こんに', 'ちは'
      end
  puts text
end

block_number do |text|
  text * 2
end

block_number do |text_1, text_2|
  text_1 * 2 + text_2 * 2
end
