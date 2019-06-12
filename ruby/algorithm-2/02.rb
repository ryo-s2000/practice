(1..100).each{|i|
	flag = false
	(1..100).each{|j|
		if i % j == 0 then
			puts "#{i}%#{j}"
			flag = !flag
		end
	}
	puts i if flag
}
