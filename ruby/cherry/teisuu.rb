class Teisuu
  DEFAULT_PRICE = 0
  # DEFAULT_PRICE = 100
end

p Teisuu::DEFAULT_PRICE
# Teisuu::DEFAULT_PRICE = 300
# p Teisuu::DEFAULT_PRICE

class Product
  NAME = 'A Product'
  SOME_NAMES = ['Foo', 'Bar', 'Biz']
  SOME_PRICE = {'Foo' => 1000, 'Bar' => 2000, 'Baz' => 30000}
end

Product::NAME.upcase!
p Product::NAME

Product::SOME_NAMES << 'Hoge'
p Product::SOME_NAMES

Product::SOME_PRICE['Hoge'] = 400
p Product::SOME_PRICE

class String
  def shuffle
    chars.shuffle.join
  end
end

s = 'Hello World'
p s.shuffle



alice = 'I am Alice.'
bob   = 'I am Bob.'

def alice.shuffle
  chars.shuffle.join
end
