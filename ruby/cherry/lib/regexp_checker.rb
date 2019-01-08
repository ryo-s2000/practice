print 'Text?:'
text = gets.chomp

begin
  print 'Pattern?:'
  pattern = gets.chomp
  regexp = Regexp.new(pattern)
rescue RegexpError => e
  puts "invalid pattern: #{e.message}"
  return
end

maches = text.scan(regexp)
if maches.size > 0
  puts "Matched: #{maches.join('.')}"
else
  puts "Nothing matched."
end
