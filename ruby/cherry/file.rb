class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  # def hello
  #   "Hello, I am #{name}."
  # end
  #
  # def hi
  #   "Hello, I am #{self.name}."
  # end
  #
  # def my_name
  #   "My name is #{@name}."
  # end

  def rename_to_bob
    name = "Bob"
  end

  def rename_to_corol
    self.name = "corle"
  end

  def rename_to_deve
    @name = "Dave"
  end
end

user = User.new('Alice')

user.rename_to_bob
p user.name
user.rename_to_corol
p user.name
p user.rename_to_deve
p user.name

class Foo
  puts "クラス構文直下のself:#{self}"

  def self.bar
    puts "クラスメソッド内のself:#{self}"
  end

  def baz
    puts "インスタンスソッド内のself:#{self}"
  end
end

Foo.bar
foo = Foo.new
foo.baz

class Product
  attr_accessor :name, :price

  def initialize(name, price)
    @name  = name
    @price = price
  end

  def self.format_price(price)
    "#{price}円"
  end

  def to_s
    formated_price = Product.format_price(price)
    "name: #{name}, price: #{formated_price}"
  end
end

product = Product.new('A great Movie', 1000)
p product.to_s
