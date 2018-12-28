# old_syntax = <<TEXT
# {
#   :name   => 'Alice',
#   :age    => 20,
#   :gender => :female
# }
# TEXT
#
# convert_hash_syntax(old_syntax)

text = <<TEXT
私の郵便番号は1234567です。
僕の住所は6770056兵庫県似合いあな1234でしう。
TEXT

puts text.gsub(/(\d{3})(\d{4})/,'\1-\2')

regex = /\d{3}-\d{4}/
p regex.class

if '123-4567' =~ /\d{3}-\d{4}/
  puts 'match'
else
  puts 'do not match'
end
p 'hello' !~ /\d{3}-\d{4}/

birthday = '私の誕生日は2000年12月20日生まれです。'
# if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ birthday
#   puts "#{year}/#{month}/#{day}"
# end
# p b[:year]
# p b[:month]
# p b[:day]

p '123 456 789'.scan(/\d+/)

number = '郵便番号は123-4567です。'
p number[/\d{3}-\d{4}/]

p birthday[/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, :day]
p birthday.slice(/(\d+)年(\d+)月(\d+)日/, 3)
p birthday.gsub(/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/,'\k<year>-\k<month>-\k<day>')

p 'If you want to go school you shold play baseball'.split(' ')
p 'If you want to go school you shold play baseball'.gsub(' ','-')

old_syntax = <<TEXT
{
 :name => 'Alice',
 :age => 20,
 :gender => :femail
}
TEXT
# convert_hash_syntax(old_syntax)

p Regexp.new('\d{3}-\d{4}')
p %r!https://example.com!

tel = '03-1234-5678'
case tel
when /^\d{3}-\d{4}$/
  puts '郵便番号です'
when /^\d{4}\/\d{1,2}\/\d{1,2}$/
  puts '日付です'
when /^\d+-\d+-\d+$/
  puts '電話番号です'
end

birthday = '私の誕生日は2000年12月20日生まれです。'
birthday =~ /(\d+)年(\d+)月(\d+)日/
p $~
p $&
p $1
p $2
p $3
p $+

(0..3).each do |number|
  p "#{number}:#{Regexp.last_match(number)}"
end
