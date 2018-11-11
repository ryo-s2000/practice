def fizz_buzz(numbers)
  numbers.each do |number|
    if number % 3 == 0 && number % 5 == 0
      puts "Fizz Buzz"
    elsif number % 3 == 0
      puts "Fizz"
    elsif number % 5 == 0
      puts "buzz"
    else
      puts number
    end
  end
end

numbers = 1..15
fizz_buzz(numbers)
