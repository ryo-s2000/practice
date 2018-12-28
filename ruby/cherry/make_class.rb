# データと振る舞いを持ち合わせた状態、だから管理がしやすい、結局は保守性

class User
  attr_reader :first_name, :last_name, :age
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end
end

users = []
users << User.new('Alice', 'Ruby', 20)
users << User.new('Bob', 'Python', 30)

def full_name(user)
  "#{user.first_name}#{user.last_name}"
end

users.each do |user|
  puts "氏名：#{full_name(user)}、年齢：#{user.age}"
end

p users[0].first_name
# p users[0].first_name = 'tom'

class Name
  def initialize(name)
    @name = name
  end

  # def hello
  #   "Hello I am #{@name}"
  # end

  def hello
    shuffle_name = @name.chars.shuffle.join
    "Hello I am #{shuffle_name}"
  end

end

name = Name.new('Tom')
p name.hello
p name.hello #毎回ローカル変数が作り直されている

class UserName
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  # def name=(value)
  #   @name = value
  # end
end

usr = UserName.new('suzuki')
p usr.name
usr.name = 'ryo'
p usr.name


class Map
  def initialize(name)
    @name = name
  end

  def self.create_user(names)
    names.map{|name| Map.new(name)}
  end

  def hello
    "Hello I am #{@name}"
  end
end

names = ['Tom','Mike','Saki']
users = Map.create_user(names)
users.each do |user|
  puts user.hello
end

class Product
  DEFAULT_PRICE = 0
  UNITS = {m:1.0, ft:3.28, in:39.37}
  attr_reader :name, :price

  def initialize(name, price = DEFAULT_PRICE)
    @name = name
    @price = price
  end
end

product = Product.new('A fee movie')
p product.price
