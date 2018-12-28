module Loggable
  # class << self
    def log(text)
      puts "[LOG]#{text}"
    end
  # end

  module_function :log
end

class Product
  include Loggable

  def title
    log 'hello tokyo'
  end
end

Loggable.log('nainai')
Product.new.title
