country = "America"

change_language_name =
    if country == "Japan"
      'トム'
    elsif country =="America"
      'Tom'
    else
      '???'
    end

puts change_language_name

puts %q!Hello World!

text = <<TEXT
here
is
write
free!!
TEXT

puts text

program_language = 'Ruby'
program_language.prepend(<<LANGSGES)
Java
PHP
Python
LANGSGES

puts program_language.upcase
