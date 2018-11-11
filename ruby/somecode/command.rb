class MyCron
	def putsText#(options = {})
		puts "horatuyokunarudesyo"
	end
end

ARGV.each_with_index do |arg, i|
  if arg == 'putsText'
  	MyCron.new.putsText
  end
end
