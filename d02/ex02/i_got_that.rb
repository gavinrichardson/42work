#!/usr/bin/ruby
print "What you gotta say? : " 
stopcode = gets.chomp
while stopcode.to_s != "STOP!" do
	print "I got that! Anything else? : "
stopcode = gets.chomp
end 
