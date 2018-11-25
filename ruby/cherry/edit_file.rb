File.open('./edit.txt', 'w') do |file|
  (1..3).each { |line| file.puts("#{line}行目のテキストです") }
end

# cat ./edit.txt