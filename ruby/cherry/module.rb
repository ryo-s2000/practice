module Loggable
  def log(text)
    puts "[LOG]#{text}"
  end
end

class Product
  extend Loggable

  def self.create_products(names)
    log 'create_products is called'
  end

  # def title
  #   log 'title is called'
  # end
end

class User
  include Loggable

  def name
    log 'name is called'
  end
end

# product = Product.new
# p product.title
# p User.new.name

p Product.create_products([])
p Product.log('Hello.')
