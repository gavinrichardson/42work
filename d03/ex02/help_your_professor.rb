#!/usr/bin/ruby
def average_mark(input)
	#input {|k,v| v.inject(&:+)/k.size}
	total = 0
	input.each do |k, v| 
		total = total + v #total loops, adding itself to itself with each new loop
	end
	total = total / input.size # 
	return total
end

class_csci101 = {
	"margot" => 17,
	"june" => 8,
	"colin" => 14,
	"lewis" => 9
}
#class_csci101{|k,v| v.inject(&:+)/k.size}
#end	
class_csci102 = {
	"quentin" => 16,
	"julie" => 15,
	"mark" => 8,
	"stephanie" => 13
}
puts "Average mark for the CSCI 101 class : #{average_mark(class_csci101)}"
puts "Average mark for the CSCI 102 class : #{average_mark(class_csci102)}"
