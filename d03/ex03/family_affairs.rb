#!/usr/bin/ruby
def find_the_gingers(input)
	array = []
	input.each do |k,v| 
		if v == "red" # == is comparing two things 
			array << k # = is setting
		end	
	end
	return array
end
dupont_family = {
	"mathew" => "red",
	"mary" => "blonde",
	"virginia" => "brown",
	"gaetan" => "red",
	"fred" => "red",
}
p find_the_gingers dupont_family
