def check_class(number = nil)
  return 'please input your number' if number.nil?

  case number
  when 1..10  then 'class_first'
  when 11..20 then 'class_second'
  when 21..30 then 'class_third'
  else 'You should check distributes paper why number is more than 30.'
  end

end

puts check_class(1)
puts check_class(12)
puts check_class(23)
puts check_class(34)
puts check_class
