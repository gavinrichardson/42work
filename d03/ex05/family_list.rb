#!/usr/bin/ruby

def newmethod
hash = Hash.new {|name,rel|}
newrel = "new"
newname = "new"

#ntil newrel == "DONE" || newname == "DONE"
loop do
	print "Hello, what is someone's name?: "
	newname = gets.chomp"\n"
	if newname == "DONE"
		break
	end
	print "And what is that person to you?: "
	newrel = gets.chomp"\n"
  	if newrel == "DONE"
		break
	end
	hash.store(newname,newrel.to_sym)
end
	puts "Cool, here is your family!" 
return hash
end
p newmethod
