currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }

currencies.each do |key|
  puts "#{key[0]}:#{key[1]}"
end

currencies.delete(:usa) { |key| p "Not found #{key}"}
p currencies.size

3.times do
  p :object.object_id
end

3.times do
  p 'object'.object_id
end

def buy_bugger(menu, drink: false, potato: false)
  order = "you buy #{menu}"
  order += " with drink" if drink
  order += " and potato" if potato

  puts order
end

buy_bugger('cheese_bugger', drink: true)
buy_bugger('cheese_bugger', potato: true)

p currencies.keys
p currencies.values

add_currencie = { england: 'euro' }
p currencies.merge(add_currencie)
