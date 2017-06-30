#!/usr/bin/ruby
parameters = ARGV.size
if ARGV.empty?
	puts "none"
else print "parameters : #{parameters}\n"
   ARGV.each do |x|
	   puts "#{x}: " "#{x.length}"
   end
end
