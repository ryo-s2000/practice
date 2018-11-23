# def fizz_buzz(numbers)
#   numbers.each do |number|
#     if number % 3 == 0 && number % 5 == 0
#       puts "Fizz Buzz"
#     elsif number % 3 == 0
#       puts "Fizz"
#     elsif number % 5 == 0
#       puts "buzz"
#     else
#       puts number
#     end
#   end
# end

def fizz_buzz(number)
  if number % 3 == 0 && number % 5 == 0
    'Fizz Buzz'
  elsif number % 3 == 0
    'Fizz'
  elsif number % 5 == 0
    'Buzz'
  else
    number.to_s
  end
end

# numbers = 1..15
# fizz_buzz(numbers)

