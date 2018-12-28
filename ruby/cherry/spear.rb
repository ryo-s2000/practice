class Product
  attr_reader :name, :price

  def initialize(name,price)
    @name = name
    @price = price
  end

  def to_s
    "name:#{name},price:#{price}"
  end

  private

  def name
    "A greate Movie"
  end
end

product = Product.new('A great Movie',1000)
# p product.name
p product.price
p product.to_s

class DVD < Product
  attr_reader :running_time

  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end

  def to_s
    "name:#{name}"
  end

  private

  def name
    "dadadadara"
  end
end

dvd = DVD.new('A great Movie', 1000, 120)
# p dvd.name
p dvd.price
p dvd.running_time
p dvd.to_s


class User
  def hello
    "Hello I am #{name}"
  end

  private

  def name
    'Alice'
  end
end

p User.new.hello

class ClassMethod
  class << self
    private

    def hello
      'Hello'
    end
  end
end

# ClassMethod.hello


class Weight
  attr_reader :name, :weight

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  def heavier_than?(other_user)
    other_user.weight < @weight
  end

  protected :weight
end

alice = Weight.new('Alice', 50)
bob   = Weight.new('Bob', 60)
p alice.heavier_than?(bob)
