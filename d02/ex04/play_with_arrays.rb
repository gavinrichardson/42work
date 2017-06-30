#!/usr/bin/ruby
ary = [1,3,5,7,9,11,13,14]
print "#{ary}\n"
newary = ary.map {|ary| ary.to_i + 2} 
print "#{newary}\n" 
