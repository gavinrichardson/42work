#!/usr/bin/ruby
input = ARGV[0].to_s 
z = "z"
if ARGV.length != 1 || input.scan(z).length == 0 
	puts "none"
else 
	puts "#{z*input.scan(z).length}" 
end
