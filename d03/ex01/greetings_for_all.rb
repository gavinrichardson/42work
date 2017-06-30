#!/usr/bin/ruby
def hello(input = nil) 
if input.is_a?String 
	puts "Hello #{input}"
elsif input == nil 
	puts "Hello, noble stranger"
else puts"Error! That doesn't sound like a name."
end
end
hello"lucie"
hello
hello 22

