#!/usr/bin/ruby
ary = [2,12,24,1,5,46,7,6,2,24,46]
print "#{ary}\n"
newary = ary.select! {|a| a > 5}
newary = ary.map {|a| a + 2}
p newary.uniq
