#!/usr/bin/ruby
ary = [2,12,24,1,5,46,7,4,]
print "#{ary}\n"
newary = ary.select! {|a| a > 5}	
newerary = ary.map {|a| a + 2}
print "#{newerary}\n"
