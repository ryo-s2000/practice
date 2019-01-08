module Erro
  def hello
    'hello'
  end
end

begin
  greeting = Erro.new
rescue
  puts '例外発生'
end

puts 'there is bug bu I want to print!'

def methos_1
  puts 'methos_1 start .'
  begin
    methos_2
  rescue => e
  # rescue ZeroDivisionError
    puts e.class
    puts e.message
    puts e.backtrace
    # puts '0で除算しました'
  end
end

def methos_2
  puts 'method_2 start .'
  method_3
  puts 'method_3 start .'
end

def method_3
  puts 'method_3 start .'
  1/0
  puts 'method_3 end .'
end

methos_1

retry_count = 0
begin
  puts '処理を開始します。'
  1/0
rescue
  retry_count += 1
  if retry_count <= 3
    puts "retryするぞー #{retry_count}回目"
    retry
  else
    puts 'もうretryできないね'
  end
end


def current_of(country)
  case country
  when :japan
   'yen'
  when :us
    'doll'
  else
    raise ArgumentError.new("ちゃんと選ばんと")
  end
end

p current_of(:japan)
p current_of(:us)
# p current_of(:hoge)

input = gets.chomp
input