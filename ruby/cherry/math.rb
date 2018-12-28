p Math.sqrt(2)

class Calculator
  include Math

  def calc_sqrt(n)
    sqrt(n)
  end
end

calculator = Calculator.new
p calculator.calc_sqrt(2)

Kernel.puts "Hello."
Kernel.p [1,2,3]
