#!/usr/bin/ruby
def basic_method(input)
	if input.length < 11 
			puts "nil"
	else 
			puts input.upcase 
	end
end

if ARGV.length == 0
	puts "none"
else
	basic_method(ARGV[0])
end
